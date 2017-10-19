package com.rental.service;

import com.rental.entity.Message;

import java.util.List;


public interface MessageService extends BaseService<Message>{
//	Message getMessagesByHuifu(Message message);
	List<Message> getMessagesDaoXu();
}
