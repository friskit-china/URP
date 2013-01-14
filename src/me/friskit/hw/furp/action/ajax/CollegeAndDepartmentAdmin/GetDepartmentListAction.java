package me.friskit.hw.furp.action.ajax.CollegeAndDepartmentAdmin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import me.friskit.hw.furp.orm.HibernateSessionFactory;
import me.friskit.hw.furp.orm.entity.UrpCollege;
import me.friskit.hw.furp.orm.entity.UrpDepartment;
import me.friskit.hw.furp.orm.entity.UrpTeacher;

import com.opensymphony.xwork2.ActionSupport;

public class GetDepartmentListAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7169916205766778810L;
	private List<HashMap<String,String>> result;
	public List<HashMap<String, String>> getResult() {
		return result;
	}
	public void setResult(List<HashMap<String, String>> result) {
		this.result = result;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		List<UrpDepartment> departmentData;
		List<UrpCollege> collegeData;
		
		this.result = new ArrayList<HashMap<String,String>>();
		
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		
		Query departmentQuery = session.createQuery("from UrpDepartment");
		Query collegeQuery = session.createQuery("from UrpCollege");
		departmentData = departmentQuery.list();
		collegeData = collegeQuery.list();
		trans.commit();
		
		for(UrpCollege college:collegeData){
			HashMap<String,String> c = new HashMap<String,String>();
			c.put("id", college.getCollegeNo());
			c.put("text", college.getCollegeNo()+"-"+college.getName());
			result.add(c);
		}
		
		for(UrpDepartment department:departmentData){
			HashMap<String,String> t = new HashMap<String,String>();
			t.put("id", department.getDepartNo());
			t.put("text", department.getDepartNo()+"-"+department.getName());
			t.put("pid", department.getCollege().getCollegeNo());
			result.add(t);
		}
		HibernateSessionFactory.closeSession();
		return SUCCESS;
	}
	
}
