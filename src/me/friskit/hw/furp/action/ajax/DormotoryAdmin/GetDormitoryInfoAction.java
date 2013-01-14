package me.friskit.hw.furp.action.ajax.DormotoryAdmin;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpDormitory;

import com.opensymphony.xwork2.ActionSupport;

public class GetDormitoryInfoAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1226213007278234946L;
	private String total;
	private List<UrpDormitory> data;
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public List<UrpDormitory> getData() {
		return data;
	}
	public void setData(List<UrpDormitory> data) {
		this.data = data;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		Query query = session.createQuery("from UrpDormitory");
		this.data = query.list();
		this.total = data.size()+"";
		trans.commit();
		
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}
	
}
