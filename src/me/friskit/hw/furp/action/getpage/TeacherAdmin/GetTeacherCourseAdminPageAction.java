package me.friskit.hw.furp.action.getpage.TeacherAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetTeacherCourseAdminPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3710640995281456061L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}

	
}
