package me.friskit.hw.furp.action.getpage.ClassAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetStudentClassAdminPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4791257491635219254L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}

	
}
