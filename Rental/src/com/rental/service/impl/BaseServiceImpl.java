package com.rental.service.impl;

import com.rental.dao.BaseDAO;
import com.rental.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;


@SuppressWarnings("all")//不处理所有警告
public class BaseServiceImpl<T> implements BaseService<T>{
	@Autowired
	protected BaseDAO<T> baseDAO;

	private Class entityClass;
	/**
	 * 重写构造器的目的：获取到之类类型/或者泛型的真实类型
	 */
	public BaseServiceImpl(){
		//获取访问者的类型  访问者：当前类的子类
		Class clz = getClass();
		//获取访问者的父类类型
		Type type = clz.getGenericSuperclass();
		//判断父类类型是否是ParameterizedType的实例
		if(type instanceof ParameterizedType){
			//强制类型转换
			ParameterizedType pType=(ParameterizedType)type;
			//获取父类类型上的泛型
			entityClass = (Class)pType.getActualTypeArguments()[0];
		}
	}
	public void save(T t) {
		baseDAO.save(t);
	}
	public void delete(long id) {
		baseDAO.delete(entityClass, id);
	}
	public void update(T t) {
		baseDAO.update(t);
	}
	public T getOneById(long id) {
		
		return (T) baseDAO.getOneById(entityClass, id);
	}
	public List<T> getAll() {
		return baseDAO.getAll(entityClass);
	}
	//-----------------------------------
	public BaseDAO<T> getBaseDAO() {
		return baseDAO;
	}
	public void setBaseDAO(BaseDAO<T> baseDAO) {
		this.baseDAO = baseDAO;
	}
	@Override
	public List findPage(int pagesize, int currentPage) {
		return baseDAO.findPage(entityClass, pagesize, currentPage);
	}
}
