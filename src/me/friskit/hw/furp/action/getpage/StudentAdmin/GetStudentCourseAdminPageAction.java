package me.friskit.hw.furp.action.getpage.StudentAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetStudentCourseAdminPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6860852208959196526L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}
	
}
