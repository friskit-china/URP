package com.smarty4j.utils;

import java.io.File;

import javax.servlet.ServletContext;

import org.lilystudio.smarty4j.Engine;

public class SmartyManager {
	
	public static String INITPARAM_TEMPLATE_PATH = "TemplatePath";	//初始化参数
	public static final String CONFIG_SERVLET_CONTEXT_KEY = "smarty.engine";
	
	protected String templatePath; //模板路径
	protected Engine engine;
	public Engine getEngine() {
		return engine;
	}
	public void setEngine(Engine engine) {
		this.engine = engine;
	}
	
	public synchronized Engine getEngine(ServletContext servletContext){
		if (engine == null) {
			initEngine(servletContext);
			servletContext.setAttribute(CONFIG_SERVLET_CONTEXT_KEY, engine);
		}
		return engine;
	}
	
	/**
	 * 初始化模板引擎
	 * @param servletContext
	 */
	public void initEngine(ServletContext servletContext){
		//初始化模板引擎
		engine = new Engine();
		//设置模板路径
		templatePath = servletContext.getInitParameter(INITPARAM_TEMPLATE_PATH);
		if (templatePath == null) {
			templatePath = servletContext.getInitParameter("templatePath");
		}
		
		if (templatePath == null){
			templatePath = servletContext.getRealPath("/");
		}

		if (!templatePath.endsWith(File.separator)) {
			templatePath = templatePath + File.separator;
		}
		engine.setTemplatePath(templatePath);	//设置模板路径
	}
	
}
