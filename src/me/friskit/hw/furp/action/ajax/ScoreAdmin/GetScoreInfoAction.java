package me.friskit.hw.furp.action.ajax.ScoreAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpStuCourse;

import com.opensymphony.xwork2.ActionSupport;

public class GetScoreInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8309365851002518763L;
	private String total;
	private List<UrpStuCourse> data;

	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public List<UrpStuCourse> getData() {
		return data;
	}
	public void setData(List<UrpStuCourse> data) {
		this.data = data;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		Query query = session.createQuery("from UrpStuCourse");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		
		HibernateSessionFactory.closeSession();
		
		return SUCCESS;
	}
}
