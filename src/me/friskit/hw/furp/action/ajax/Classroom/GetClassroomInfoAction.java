package me.friskit.hw.furp.action.ajax.Classroom;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpClassroom;

import com.opensymphony.xwork2.ActionSupport;

public class GetClassroomInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7428728420456043476L;
	private String total;
	private List<UrpClassroom> data;
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public List<UrpClassroom> getData() {
		return data;
	}
	public void setData(List<UrpClassroom> data) {
		this.data = data;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		Query query = session.createQuery("from UrpClassroom");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}
	
}
