package com.rental.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.rental.entity.User;
import com.rental.service.UserService;

import java.util.Map;

public class UserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private User user;
	private String loginerror;
	
	/**
	 * 管理员登陆
	 */
	public String execute() throws Exception {
			user = userService.getUserByNameAndPwd(user);
			if (user==null) {
				return "fail";
			}/*else{
				JSONObject json = new JSONObject();
				json.put("user",user);
				ajax(json.toString(),"text/plain");
				return Action.SUCCESS;
			}*/
			ActionContext.getContext().getSession().put("user", user);
			return Action.SUCCESS;
	}
	/*
	// AJAX输出，返回null
	 public String ajax(String content, String type) {
	  try {
	   HttpServletResponse response = ServletActionContext.getResponse();
	   response.setContentType(type + ";charset=UTF-8");
	   response.setHeader("Pragma", "No-cache");
	   response.setHeader("Cache-Control", "no-cache");
	   response.setDateHeader("Expires", 0);
	   response.getWriter().write(content);
	   response.getWriter().flush();
	  } catch (IOException e) {
	   e.printStackTrace();
	  }
	  return null;
	 }*/
	 
	/**
	 * 注册管理员
	 * @return
	 */
	public String register() {
		userService.save(user);
		return "register";
	}
	 /**
		 * 判断是否登陆
		 * @param content
		 * @param type
		 * @return
		 */
	 public String test() {
		Map<String, Object> sessionmMap= ActionContext.getContext().getSession();
		user=(User) sessionmMap.get("user");
		if (user==null) {
			return "login";
		}
		return "test";
	}
	 

	 /**
	  * 注销
	  * @return
	  */
	public String zhuxiao() {
		Map<String, Object> session= ActionContext.getContext().getSession();
		session.remove("user");
		session.remove("customer");
		return "zhuxiao";
	}
	


	//----------------------

	public UserService getUserService() {
		return userService;
	}

	public String getLoginerror() {
		return loginerror;
	}

	public void setLoginerror(String loginerror) {
		this.loginerror = loginerror;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
