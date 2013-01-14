package me.friskit.hw.furp.action.ajax.CollegeAndDepartmentAdmin;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCollege;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

public class GetCollegeDetailAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4039449795927894541L;

	private String result;
	private int stateCode;
	private UrpCollege college;
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public int getStateCode() {
		return stateCode;
	}
	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}
	public UrpCollege getCollege() {
		return college;
	}
	public void setCollege(UrpCollege college) {
		this.college = college;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String collegeNo = ServletActionContext.getRequest().getParameter("collegeNo");
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		if(collegeNo==null){
			this.result = new String("ERROR:学院编号不能为空");
			this.stateCode = -2;
			return SUCCESS;
		}
		this.college = (UrpCollege) session.get(UrpCollege.class, collegeNo);
		trans.commit();
		if(college!=null){
			this.result = new String("success");
			this.stateCode = 0;
		}else{
			this.result = new String("ERROR:学院编号非法");
			this.stateCode = -1;
		}
		return SUCCESS;
	}


	
}
