package me.friskit.hw.furp.action.getpage.CourseAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetSyllabusQueryPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3390793998027039062L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}
	
	
}
