package me.friskit.hw.furp.action.getpage.ScoreAdmin.ScoreAnalyze;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetScoreStatisticPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2432032263874324408L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		return SUCCESS;
	}
	
}
