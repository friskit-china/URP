package me.friskit.hw.furp.action.getpage.attention;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetSchoolCalendarPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6628556089682008565L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}
	
	

}
