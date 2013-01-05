package me.friskit.hw.furp.action.getpage.attention.help;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetAboutPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6006728147158961582L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}

	
}
