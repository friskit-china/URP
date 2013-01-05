package me.friskit.hw.furp.action.getpage.CourseAdmin;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetCourseInfoAdminPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2742248189328825537L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}

	
}
