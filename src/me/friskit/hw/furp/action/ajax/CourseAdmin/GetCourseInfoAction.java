package me.friskit.hw.furp.action.ajax.CourseAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCourse;

import com.opensymphony.xwork2.ActionSupport;

public class GetCourseInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5556849854932916178L;
	private String total;
	private List<UrpCourse> data;
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public List<UrpCourse> getData() {
		return data;
	}
	public void setData(List<UrpCourse> data) {
		this.data = data;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		Query query = session.createQuery("from UrpCourse");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		return SUCCESS;
	}
	
}
