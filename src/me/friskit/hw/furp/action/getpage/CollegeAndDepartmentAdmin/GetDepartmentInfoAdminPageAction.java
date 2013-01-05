package me.friskit.hw.furp.action.getpage.CollegeAndDepartmentAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetDepartmentInfoAdminPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1068737529488711099L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}
	
	

}
