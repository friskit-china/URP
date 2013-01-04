package com.smarty4j.utils;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.StrutsResultSupport;
import org.apache.struts2.views.util.ResourceUtil;
import org.lilystudio.smarty4j.Context;
import org.lilystudio.smarty4j.Engine;
import org.lilystudio.smarty4j.Template;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.inject.Inject;

public class SmartyResult extends StrutsResultSupport{

	private static final long serialVersionUID = 1L;

	private Writer writer;
	
	public Writer getWriter() throws IOException {
		if (writer != null) {
			return writer;
		}
		return ServletActionContext.getResponse().getWriter();
	}

	public void setWriter(Writer writer) {
		this.writer = writer;
	}
	
	protected SmartyManager smartyManager;
	
	@Inject(value="smartyManager")
	public void setSmartyManager(SmartyManager mgr) {
		this.smartyManager = mgr;
	}

	@Override
	protected void doExecute(String locationArg, ActionInvocation invocation)
			throws Exception {
		ActionContext ctx = invocation.getInvocationContext();
		HttpServletRequest req = (HttpServletRequest) ctx.get(ServletActionContext.HTTP_REQUEST);
		ServletContext servletContext = ServletActionContext.getServletContext();
		Engine engin = smartyManager.getEngine(servletContext);
		
		// 获取模板的位置  
		if (!locationArg.startsWith("/")) {
			String base = ResourceUtil.getResourceBase(req);
			locationArg = base + "/" + locationArg;
		}
		
		Template template = engin.getTemplate(locationArg);
				
		Context context = new Context();
		context.putBean(invocation.getAction());
		Writer writer = getWriter();
		template.merge(context, writer);
	}

}
