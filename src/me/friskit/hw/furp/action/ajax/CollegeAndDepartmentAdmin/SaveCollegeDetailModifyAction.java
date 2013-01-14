package me.friskit.hw.furp.action.ajax.CollegeAndDepartmentAdmin;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCollege;
import me.friskit.hw.furp.orm.entity.UrpTeacher;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

public class SaveCollegeDetailModifyAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5210913327738810077L;
	private int stateCode;
	private String result;
	
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
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		UrpTeacher teacher;
		
		String collegeNo = ServletActionContext.getRequest().getParameter("collegeNo");
		String presidentTeacherNo = ServletActionContext.getRequest().getParameter("presidentTeacherNo");
		String collegeName = ServletActionContext.getRequest().getParameter("collegeName");
		String phone = ServletActionContext.getRequest().getParameter("phone");
		String introduction = ServletActionContext.getRequest().getParameter("introduction");
		
		if(collegeNo==null){
			stateCode = -1;
			result = "collegeNo²»ÄÜÎª¿Õ£¡";
			return SUCCESS;
		}
		
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		
		if(presidentTeacherNo!=null){
			teacher = (UrpTeacher)session.get(UrpTeacher.class, presidentTeacherNo);
			//trans.commit();
		}else{
			teacher = null;
		}
		UrpCollege college = (UrpCollege)session.get(UrpCollege.class, collegeNo);
		trans.commit();
		
		if(collegeName!=null)
			college.setName(collegeName);
		if(phone!=null)
			college.setPhone(phone);
		if(introduction!=null)
			college.setIntroduction(introduction);
		if(teacher!=null)
			college.setPresident(teacher);
		session.update(college);
		
		trans = session.beginTransaction();
		trans.commit();
		HibernateSessionFactory.closeSession();
		stateCode = 0;
		result = "success";
		return SUCCESS;
	}

}
