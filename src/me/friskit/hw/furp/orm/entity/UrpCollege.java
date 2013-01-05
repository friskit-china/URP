package me.friskit.hw.furp.orm.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * UrpCollege entity. @author MyEclipse Persistence Tools
 */

public class UrpCollege implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 4710575561478958131L;
	private String collegeNo;
	private UrpTeacher president;
	private String name;
	private String phone;
	private String introduction;
	private Set urpDepartments = new HashSet(0);
	private Set urpTeachers = new HashSet(0);

	// Constructors

	/** default constructor */
	public UrpCollege() {
	}

	/** minimal constructor */
	public UrpCollege(String collegeNo, String name) {
		this.collegeNo = collegeNo;
		this.name = name;
	}

	/** full constructor */
	public UrpCollege(String collegeNo, UrpTeacher president, String name,
			String phone, String introduction, Set urpDepartments,
			Set urpTeachers) {
		this.collegeNo = collegeNo;
		this.president = president;
		this.name = name;
		this.phone = phone;
		this.introduction = introduction;
		this.urpDepartments = urpDepartments;
		this.urpTeachers = urpTeachers;
	}

	// Property accessors

	public String getCollegeNo() {
		return this.collegeNo;
	}

	public void setCollegeNo(String collegeNo) {
		this.collegeNo = collegeNo;
	}

	public UrpTeacher getPresident() {
		return this.president;
	}

	public void setPresident(UrpTeacher president) {
		this.president = president;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public Set getUrpDepartments() {
		return this.urpDepartments;
	}

	public void setUrpDepartments(Set urpDepartments) {
		this.urpDepartments = urpDepartments;
	}

	public Set getUrpTeachers() {
		return this.urpTeachers;
	}

	public void setUrpTeachers(Set urpTeachers) {
		this.urpTeachers = urpTeachers;
	}

}