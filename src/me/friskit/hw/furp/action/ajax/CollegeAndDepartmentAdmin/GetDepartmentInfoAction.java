package me.friskit.hw.furp.action.ajax.CollegeAndDepartmentAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpDepartment;

import com.opensymphony.xwork2.ActionSupport;

public class GetDepartmentInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -970419089598650631L;
	
	private List<UrpDepartment> data;
	private String total;
	
	
	public List<UrpDepartment> getData() {
		return data;
	}
	public void setData(List<UrpDepartment> data) {
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
		Query query = session.createQuery("from UrpDepartment");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		
		HibernateSessionFactory.closeSession();
		
		return SUCCESS;
	}

}
