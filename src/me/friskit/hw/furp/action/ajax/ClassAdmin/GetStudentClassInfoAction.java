package me.friskit.hw.furp.action.ajax.ClassAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpStuClass;

import com.opensymphony.xwork2.ActionSupport;

public class GetStudentClassInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8493988089624992583L;
	private String total;
	private List<UrpStuClass> data;
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public List<UrpStuClass> getData() {
		return data;
	}
	public void setData(List<UrpStuClass> data) {
		this.data = data;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		Query query = session.createQuery("from UrpStuClass");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}
	
}
