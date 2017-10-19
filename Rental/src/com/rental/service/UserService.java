package com.rental.service;

import com.rental.entity.User;

public interface UserService extends BaseService<User>{
	User getUserByNameAndPwd(User user);
}
