package me.friskit.hw.furp.action.getpage.ClassAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetClassInfoAdminPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7766588240139146531L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}

	
}
