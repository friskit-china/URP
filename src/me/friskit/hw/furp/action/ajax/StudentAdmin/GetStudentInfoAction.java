package me.friskit.hw.furp.action.ajax.StudentAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpStudent;

import com.opensymphony.xwork2.ActionSupport;

public class GetStudentInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7207001615573839455L;
	private List<UrpStudent> data;
	private String total;
	public List<UrpStudent> getData() {
		return data;
	}
	public void setData(List<UrpStudent> data) {
		this.data = data;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		Query query = session.createQuery("from UrpStudent");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}
	
	
}
