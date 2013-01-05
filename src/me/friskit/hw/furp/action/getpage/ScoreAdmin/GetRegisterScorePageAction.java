package me.friskit.hw.furp.action.getpage.ScoreAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetRegisterScorePageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3305750765943947074L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}

	
}
