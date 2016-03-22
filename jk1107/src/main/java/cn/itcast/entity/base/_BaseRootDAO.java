package cn.itcast.entity.base;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


public class _BaseRootDAO extends HibernateDaoSupport {
	private static Logger log = Logger.getLogger(_BaseRootDAO.class);

	/**
	 * Delete the given persistent instance
	 */
	public void delete(Object entity) {
		this.getHibernateTemplate().delete(entity);
	}

	/**
	 * Delete all given persistent instances
	 */
	public void deleteAll(Collection entities) {
		this.getHibernateTemplate().deleteAll(entities);
	}

	/**
	 * Delete all given persistent instances's id
	 */
	public void deleteAllById(String[] allId, Class entityClass) {
		Object obj = null;

		for (int i = 0; i < allId.length; i++) {
			obj = get(entityClass, allId[i]);
			getHibernateTemplate().delete(obj);
		}
	}
	
	/**
	 *	Delete by Hql 
	 */
	public int deleteByHql(String deleteHql) {
		return this.update(deleteHql);
	}

	/**
	 *	Delete by id 
	 */
	public void delete(String id, Class entityClass) {
			Object obj = get(entityClass, id);
			getHibernateTemplate().delete(obj);				
	}
	
	/**
	 *	Delete by Hql and Paremeter 
	 */
	public int delete(String deleteHql, Object[] objects) {
		return this.update(deleteHql, objects);
	}
	/**
	 * Execute a query for persistent instances
	 */
	public List find(String queryString) {
		return this.getHibernateTemplate().find(queryString);
	}

	/**
	 * Execute a query for persistent instances, binding one value to a "?"
	 */
	public List find(String queryString, Object value) {
		return this.getHibernateTemplate().find(queryString, value);
	}

	/**
	 * Execute a query for persistent instances, binding a number of values to
	 * "?"
	 */
	public List find(String queryString, Object[] values) {
		return this.getHibernateTemplate().find(queryString, values);
	}

	/**
	 * Execute a query for persistent instances.
	 */
	public Iterator iterate(String queryString) {
		return this.getHibernateTemplate().iterate(queryString);
	}

	/**
	 * Execute a query for persistent instances, binding one value to a "?"
	 */
	public Iterator iterate(String queryString, Object value) {
		return this.getHibernateTemplate().iterate(queryString, value);
	}

	/**
	 * Execute a query for persistent instances, binding a number of values to
	 * "?"
	 */
	public Iterator iterate(String queryString, Object[] values) {
		return this.getHibernateTemplate().iterate(queryString, values);
	}

	/**
	 * Return the persistent instance of the given entity class with the given
	 * identifier, or null if not found
	 */
	public Object get(Class entityClass, Serializable id) {
		return this.getHibernateTemplate().get(entityClass, id);
	}
	
	/**
	 * Return the persistent instance of the given entity class with the given
	 * identifier, or null if not found, and given LockMode
	 */
	public Object get(Class entityClass, Serializable id, LockMode lockMode) {
		return this.getHibernateTemplate().get(entityClass, id, lockMode);
	}
	/**
	 *	Return the persistent instance of the given entity class with the given
	 * identifierArray, or null if not found
	 */
	public Set getByIds(Class entityClass, String[] allId) {
		Set entitySet = new HashSet();
		for(int i=0; i<allId.length; i++) {
			entitySet.add(this.getHibernateTemplate().get(entityClass, allId[i]));
		}
		return entitySet;
	}
	public Set getByIds(Class entityClass, Integer[] allId) {
		Set entitySet = new HashSet();
		for(int i=0; i<allId.length; i++) {
			entitySet.add(this.getHibernateTemplate().get(entityClass, allId[i]));
		}
		return entitySet;
	}
	/**
	 * Return the persistent instance of the given entity class with the given
	 * identifier, throwing an exception if not found.
	 */
	public Object load(Class entityClass, Serializable id) {
		return this.getHibernateTemplate().load(entityClass, id);
	}

	/**
	 * Return all persistent instances of the given entity class. Note: Use
	 * queries or criteria for retrieving a specific subset
	 */
	public List loadAll(Class entityClass) {
		return this.getHibernateTemplate().loadAll(entityClass);
	}

	/**
	 * Load the persistent instance with the given identifier into the given
	 * object, throwing an exception if not found.
	 */
	public void load(Object entity, Serializable id) {
		this.getHibernateTemplate().load(entity, id);
	}

	/**
	 * Persist the given transient instance
	 */
	public Serializable save(Object entity) {
		return this.getHibernateTemplate().save(entity);
	}

	/**
	 * Persist the given transient instance with the given identifier.
	 */
//	public void save(Object entity, Serializable id) {
//		this.getHibernateTemplate().save(entity, id);
//	}

	/**
	 * Update the given persistent instance, associating it with the current
	 * Hibernate Session.
	 */
	public void update(Object entity) {
		this.getHibernateTemplate().update(entity);
	}
	
	/**
	 * Update with a update Hql;
	 */
	public int update(String updateHql) {
		Session session = this.getSession();
		int resultInt = session.createQuery(updateHql).executeUpdate();
		return resultInt;
	}
	/**
	 * Update with a update Hql and Object[];
	 */
	public int update(String updateHql, Object[] objects) {
		Session session = this.getSession();
		Query updateQuery = session.createQuery(updateHql);
		if (objects != null) {
			for (int i = 0; i < objects.length; i++) {
				updateQuery.setParameter(i, objects[i]);
			}
		}
		return updateQuery.executeUpdate();
	}

	/**
	 * Save or update the given persistent instance, according to its id
	 * (matching the configured "unsaved-value"?). Associates the instance with
	 * the current Hibernate Session.
	 */
	public void saveOrUpdate(Object entity) {
		this.getHibernateTemplate().saveOrUpdate(entity);
	}

	/**
	 * Save or update all given persistent instances, according to its id
	 * (matching the configured "unsaved-value"?). Associates the instances with
	 * the current Hibernate Session.
	 */
	public void saveOrUpdateAll(Collection entities) {
		this.getHibernateTemplate().saveOrUpdateAll(entities);
	}
	
	public void initialize(Object proxy) {
		this.getHibernateTemplate().initialize(proxy);
	}
	

}