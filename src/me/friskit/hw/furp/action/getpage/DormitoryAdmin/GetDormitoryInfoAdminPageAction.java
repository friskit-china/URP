package me.friskit.hw.furp.action.getpage.DormitoryAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetDormitoryInfoAdminPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7108818405363687543L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}

	
}
