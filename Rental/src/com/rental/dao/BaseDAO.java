package com.rental.dao;

import org.hibernate.Query;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class BaseDAO<T> extends HibernateDaoSupport {
	
	public void save(T t){
		getHibernateTemplate().save(t);
	}
	/**
	 * 在做删除操作时,应该明确知道要删除那一张表,和删除表中那一条数据
	 * @param id
	 * 在做删除操作时：
	 *    ①先根据id和entityClass找到要删除的对象
	 * 	  ②做删除
	 */
	public void delete(Class<T> entityClass, long id){
		//根据id去获取对应对象
		T t = getOneById(entityClass, id);
		if (t!=null) {
			getHibernateTemplate().delete(t);
		}
	}
	public void update(T t){
		getHibernateTemplate().update(t);
	}
	public T getOneById(Class<T> entityClass, long id){
		return getHibernateTemplate().get(entityClass, id);
	}
	@SuppressWarnings("unchecked")//不处理警告
	public List<T> getAll(Class<T> entityClass){
		return getHibernateTemplate().find(" from "+entityClass.getName());
	}
/*
 * 该方法适用于所有要自己写hql的情况
 */
public List findQuery(String hql, Object... obj) {
		return getHibernateTemplate().find(hql, obj);
}
/**
 * 分页
 * @param entityClass
 * @param pagesize
 * @param currentPage
 * @return
 */
public List findPage(Class<T> entityClass, int pagesize, int currentPage){
	Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
	Query query = session.createQuery("from "+entityClass.getName());
	//从哪个索引开始取
	try {
		query.setFirstResult((currentPage-1)*pagesize);
		//取多少个
		query.setMaxResults(pagesize);
	} catch (Exception e) {
		e.printStackTrace();
	}
	return query.list();
	}
}
