package com.rental.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.rental.entity.Customer;
import com.rental.entity.Message;
import com.rental.entity.User;
import com.rental.service.MessageService;
import com.rental.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class MessageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Autowired
	private MessageService messageService;
	private Message message;
	private User user;
	private Customer customer;
	@Autowired
	private UserService userService;
	
	public UserService getUserService() {
		return userService;
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
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	/**
	 * 展示留言信息
	 * @return
	 * @throws Exception
	 */
	public String showAll() throws Exception {
		List<Message> list= messageService.getMessagesDaoXu();
//		System.out.println(list.get(0));
		ActionContext.getContext().put("list", list);
		return "show";
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
	 * 显示留言（管理员）
	 * @return
	 */
	public String gBook() {
		List<Message> list=messageService.getAll();
		ActionContext.getContext().put("list", list);
		System.out.println(list);
		return "gbook";
	}
	
	/**
	 * 客户留言
	 * @return
	 */
	public String liuyan() {
		message.setMessage_date(new Date());
		messageService.save(message);
		return "messageIndex";
		
	}
	/**
	 * 管理员回复留言
	 * @return
	 */
	public String huifu() {
		Map<String, Object> map= ActionContext.getContext().getSession();
		user=(User) map.get("user");
		if (user==null) {
			return "login";
		}
		message.setRecovery_date(new Date());
		message=messageService.getOneById(message.getId());
		return "hf";
	}
	public String hfAdmin() {
		Message m=messageService.getOneById(message.getId());
		m.setAgent_content(message.getAgent_content());
		m.setRecovery_date(new Date());
		messageService.update(m);
		return "hfAdmin";
	}
	
	/*public String huifuContent() {
		message=messageService.getOneById(message.getId());
		message.setAgent_content()
		return "hf";
	}
*/
	/**
	 * 删除
	 * @return
	 */
	public String delete() {
		messageService.delete(message.getId());
		return "delete";
	}
	

	public MessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}
	

	//----------------------

	
}
