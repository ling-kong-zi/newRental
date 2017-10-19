package com.rental.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.rental.entity.Customer;
import com.rental.service.CustomerService;

import java.util.Date;
import java.util.List;

public class CustomerAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private CustomerService customerService;
	private Customer customer;
	
	/**
	 * 客户注册
	 */
	public String execute() throws Exception {
		
		customer.setDate(new Date());
		customerService.save(customer);
		ActionContext.getContext().getSession().put("customer", customer);
		return Action.SUCCESS;
		/*ActionContext.getContext().put("list", list);
		
		String json=JSON.toJSONString(list, SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse resp = ServletActionContext.getResponse();
		//设置响应头
		resp.setContentType("text/json;caherset=utf-8");
		try {
			//获取输出流
			PrintWriter out = resp.getWriter();
			//将json字符串写出去
			out.write(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(json);
		if (list!=null) {
			return Action.SUCCESS;
		}else {
			
			return "fail";
		}*/
		
	}
	/**
	 * 客户注册
	 * @return
	 */
	public String register() {
		customer.setDate(new Date());
		customerService.save(customer);
		return "register";
	}
	/**
	 * 客户登陆
	 * @return
	 */
	public String login() {
		customer=customerService.getNameAndPwd(customer);
		ActionContext.getContext().getSession().put("customer", customer);
		if (customer==null) {
			return "fai";
		}
		return "login";
	}
	/**
	 * 查询客户（管理员）
	 * @return
	 */
	public String showCustomer() {
		List<Customer> list=customerService.getAll();
		ActionContext.getContext().put("list", list);
		if (list!=null) {
			return "showCustomer";
		}
		return "null";
	}
	/**
	 * 删除客户资料（管理员）
	 * @return
	 */
	public String delete() {
		System.out.println(customer.getId());
	customerService.delete(customer.getId());
		return "delete";
	}
	/**
	 * 修改客户资料（管理员）
	 * @return
	 */
	public String queryId() {
		customer=customerService.getOneById(customer.getId());
		ActionContext.getContext().put("list", customer);
		System.out.println(customer);
		return "id";
	}
	
	public String update() {
		customerService.update(customer);
		System.out.println(customer);
		return "update";
	}
	public CustomerService getCustomerService() {
		return customerService;
	}
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	//----------------------

	
}
