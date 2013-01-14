package me.friskit.hw.furp.action.ajax.TeacherAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpTeacher;

import com.opensymphony.xwork2.ActionSupport;

public class GetTeacherInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2371852220950038790L;

	private List<UrpTeacher> data;
	private String total;

	public List<UrpTeacher> getData() {
		return data;
	}
	public void setData(List<UrpTeacher> data) {
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
		Query query = session.createQuery("from UrpTeacher");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}
}
