package me.friskit.hw.furp.action.ajax.CollegeAndDepartmentAdmin;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCollege;
import me.friskit.hw.furp.orm.entity.UrpDepartment;

import com.opensymphony.xwork2.ActionSupport;

public class GetDepartmentDetailAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7989931845083645141L;
	private int stateCode;
	private String result;
	private UrpDepartment department;
	public int getStateCode() {
		return stateCode;
	}
	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public UrpDepartment getDepartment() {
		return department;
	}
	public void setDepartment(UrpDepartment department) {
		this.department = department;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String departNo = ServletActionContext.getRequest().getParameter("departNo");
		
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		
		if(departNo==null){
			this.result = new String("ERROR:系编号不能为空");
			this.stateCode = -2;
			return SUCCESS;
		}
		this.department = (UrpDepartment) session.get(UrpDepartment.class, departNo);
		trans.commit();
		if(this.department!=null){
			this.result = new String("success");
			this.stateCode = 0;
		}else{
			this.result = new String("ERROR:系编号非法");
			this.stateCode = -1;
		}
		
		return SUCCESS;
	}
	
	
}
