package me.friskit.hw.furp.action.ajax.TeacherAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpTeachCourse;

import com.opensymphony.xwork2.ActionSupport;

public class GetTeachCourseInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3682445919537347352L;
	private String total;
	private List<UrpTeachCourse> data;
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public List<UrpTeachCourse> getData() {
		return data;
	}
	public void setData(List<UrpTeachCourse> data) {
		this.data = data;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		Query query = session.createQuery("from UrpTeachCourse");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		return SUCCESS;
	}
	
}
