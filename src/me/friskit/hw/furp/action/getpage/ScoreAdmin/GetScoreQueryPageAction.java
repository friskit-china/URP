package me.friskit.hw.furp.action.getpage.ScoreAdmin;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetScoreQueryPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6744950323760385488L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}

	
}
