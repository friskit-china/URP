package me.friskit.hw.furp.action.ajax.TeacherAdmin;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCollege;
import me.friskit.hw.furp.orm.entity.UrpDepartment;
import me.friskit.hw.furp.orm.entity.UrpTeacher;

import com.opensymphony.xwork2.ActionSupport;

public class SaveTeacherDetailModifyAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4157506142305189131L;
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
		UrpCollege college;
		UrpDepartment department;
		
		String teacherNo = ServletActionContext.getRequest().getParameter("teacherNo");
		String teacherName = ServletActionContext.getRequest().getParameter("teacherName");
		String sex = ServletActionContext.getRequest().getParameter("sex");
		String phone = ServletActionContext.getRequest().getParameter("phone");
		String post = ServletActionContext.getRequest().getParameter("post");
		String collegeNo = ServletActionContext.getRequest().getParameter("collegeNo");
		String departNo = ServletActionContext.getRequest().getParameter("departNo");
		

		if(teacherNo==null){
			stateCode = -1;
			result = "teacherNo²»ÄÜÎª¿Õ£¡";
			return SUCCESS;
		}

		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		if(collegeNo!=null){
			college = (UrpCollege)session.get(UrpCollege.class,collegeNo);
		}else{
			college = null;
		}
		if(departNo!=null){
			department = (UrpDepartment)session.get(UrpDepartment.class,departNo);
		}else{
			department = null;
		}
		UrpTeacher teacher = (UrpTeacher)session.get(UrpTeacher.class, teacherNo);
		trans.commit();
		
		if(teacherName!=null)
			teacher.setTeacherName(teacherName);
		if(sex!=null)
			teacher.setSex(sex);
		if(phone!=null)
			teacher.setPhone(phone);
		if(post!=null)
			teacher.setPost(post);
		if(college!=null)
			teacher.setCollege(college);
		if(department!=null)
			teacher.setDepartment(department);
		session.update(college);
		
		trans = session.beginTransaction();
		trans.commit();
		HibernateSessionFactory.closeSession();
		stateCode = 0;
		result = "success";
		
		return SUCCESS;
	}
	
	
}
