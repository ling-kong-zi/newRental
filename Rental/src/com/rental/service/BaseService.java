package com.rental.service;

import java.util.List;

public interface BaseService<T> {
	void save(T t);
	void delete(long id);
	void update(T t);
	T getOneById(long id);
	List<T> getAll();
	List findPage(int pagesize, int currentPage);
}
