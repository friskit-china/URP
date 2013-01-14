package me.friskit.hw.furp.action.ajax.CollegeAndDepartmentAdmin;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCollege;
import me.friskit.hw.furp.orm.entity.UrpDepartment;
import me.friskit.hw.furp.orm.entity.UrpTeacher;

import com.opensymphony.xwork2.ActionSupport;

public class SaveDepartmentDetailModifyAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6002553416386654862L;
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
		UrpTeacher teacher;
		UrpCollege college;
		

		String departNo = ServletActionContext.getRequest().getParameter("departNo");
		String departmentHeaderTeacherNo = ServletActionContext.getRequest().getParameter("departmentHeaderTeacherNo");
		String collegeNo = ServletActionContext.getRequest().getParameter("collegeNo");
		String departName = ServletActionContext.getRequest().getParameter("departName");
		String phone = ServletActionContext.getRequest().getParameter("phone");
		String introduction = ServletActionContext.getRequest().getParameter("introduction");
		
		if(departNo==null){
			stateCode = -1;
			result = "departNo²»ÄÜÎª¿Õ£¡";
			return SUCCESS;
		}

		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		
		if(departmentHeaderTeacherNo!=null){
			teacher = (UrpTeacher)session.get(UrpTeacher.class, departmentHeaderTeacherNo);
		}else{
			teacher = null;
		}
		
		if(collegeNo!=null){
			college = (UrpCollege)session.get(UrpCollege.class, collegeNo);
		}else{
			college = null;
		}
		
		UrpDepartment department = (UrpDepartment)session.get(UrpDepartment.class, departNo);
		trans.commit();
		
		if(departName!=null)
			department.setName(departName);
		if(phone!=null)
			department.setPhone(phone);
		if(introduction!=null)
			department.setIntroduction(introduction);
		if(teacher!=null)
			department.setDepartmentHeader(teacher);
		if(college!=null)
			department.setCollege(college);
		
		session.update(department);
		trans = session.beginTransaction();
		trans.commit();
		HibernateSessionFactory.closeSession();
		
		stateCode = 0;
		result = "success";
		return SUCCESS;
	}
}
