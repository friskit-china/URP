package me.friskit.hw.furp.action.ajax.CollegeAndDepartmentAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCollege;

import com.opensymphony.xwork2.ActionSupport;

public class GetCollegeInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3703982959856886775L;
	
	private List<UrpCollege> data;
	private String total;
	
	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public List<UrpCollege> getData() {
		return data;
	}

	public void setData(List<UrpCollege> data) {
		this.data = data;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		Query query = session.createQuery("from UrpCollege");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}

}
