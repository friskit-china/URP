package me.friskit.hw.furp.action.ajax.TeacherAdmin;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCollege;
import me.friskit.hw.furp.orm.entity.UrpTeacher;

import com.opensymphony.xwork2.ActionSupport;

public class GetTeacherDetailAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1828388667237875514L;
	private String result;
	private int stateCode;
	private UrpTeacher teacher;
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
	public UrpTeacher getTeacher() {
		return teacher;
	}
	public void setTeacher(UrpTeacher teacher) {
		this.teacher = teacher;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		String teacherNo = ServletActionContext.getRequest().getParameter("teacherNo");
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		if(teacherNo==null){
			this.result = new String("ERROR:教师编号不能为空");
			this.stateCode = -2;
			return SUCCESS;
		}
		this.teacher = (UrpTeacher) session.get(UrpTeacher.class, teacherNo);
		trans.commit();
		if(teacher!=null){
			this.result = new String("success");
			this.stateCode = 0;
		}else{
			this.result = new String("ERROR:教师编号非法");
			this.stateCode = -1;
		}
		return SUCCESS;
	}
}
