package me.friskit.hw.furp.action;

import java.util.HashMap;
import java.util.Map;

import me.friskit.hw.furp.orm.entity.UrpStudent;

import com.opensymphony.xwork2.ActionSupport;

public class JSONTest extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2078993766692808692L;
	private Map<String, Object> dataMap;
	public Map<String, Object> getDataMap() {
		return dataMap;
	}
	public void setDataMap(Map<String, Object> dataMap) {
		this.dataMap = dataMap;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		dataMap = new HashMap<String,Object>();
		UrpStudent s = new UrpStudent();
		s.setAddress("±±¾©");
		//s.setDormitory(new UrpDormitory());
		s.setHomePhone("123");
		s.setName("Friskit");
		dataMap.put("success", true);
		dataMap.put("studnet", s);
		return SUCCESS;
	}

}
