package com.rental.AuthInterceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Map;

public class AuthInterceptor extends AbstractInterceptor {

	private boolean isAjax(HttpServletRequest request){
		if(request.getHeader("X-Requested-With") != null 
				&& request.getHeader("X-Requested-With").equals("XMLHttpRequest")){
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext().getSession();
		if(session.get("user") == null){
			HttpServletRequest request = (HttpServletRequest) invocation.getInvocationContext()
					.get(ServletActionContext.HTTP_REQUEST);
			HttpServletResponse response = (HttpServletResponse) invocation.getInvocationContext()
					.get(ServletActionContext.HTTP_RESPONSE);
			if(isAjax(request)){
				PrintWriter out = response.getWriter();
				out.write("sessionTimeout");
				out.flush();
				out.close();
				return null;
			} else {
				return "login";
			}			
		} else {
			return invocation.invoke();
		}		
	}

}
