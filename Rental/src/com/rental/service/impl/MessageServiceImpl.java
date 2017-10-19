package com.rental.service.impl;

import com.rental.entity.Message;
import com.rental.service.MessageService;

import java.util.List;

public class MessageServiceImpl extends BaseServiceImpl<Message> implements MessageService {

//	
//	@SuppressWarnings("unchecked")
//	public Message getMessagesByHuifu(Message message) {
//		//String hql="update Message m set m.agent_content="+"'"+message.getAgent_content()+"' where m.id="+"'"+message.getId()+"'";
//		//String hql="update Message m set m.agent_content=? where m.id=?";
//		//message.setAgent_content(hql);
//		//baseDAO.update(message);
//		return message;
//	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> getMessagesDaoXu() {
		String hql="select m from Message m order by m.id desc";
		return baseDAO.findQuery(hql);
		
	}


}
