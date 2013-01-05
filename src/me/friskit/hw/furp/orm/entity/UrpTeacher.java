package me.friskit.hw.furp.orm.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * UrpTeacher entity. @author MyEclipse Persistence Tools
 */

public class UrpTeacher implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -3700237175436789743L;
	private String teacherNo;
	private UrpCollege college;
	private UrpDepartment department;
	private String name;
	private String password;
	private String sex;
	private String phone;
	private String post;
	private Set urpTeachCourses = new HashSet(0);
	private Set urpDepartments = new HashSet(0);
	private Set urpColleges = new HashSet(0);
	private Set urpClasses = new HashSet(0);
	private Set urpInstructions = new HashSet(0);

	// Constructors

	/** default constructor */
	public UrpTeacher() {
	}

	/** minimal constructor */
	public UrpTeacher(String teacherNo, String name, String password, String sex) {
		this.teacherNo = teacherNo;
		this.name = name;
		this.password = password;
		this.sex = sex;
	}

	/** full constructor */
	public UrpTeacher(String teacherNo, UrpCollege college,
			UrpDepartment department, String name, String password,
			String sex, String phone, String post, Set urpTeachCourses,
			Set urpDepartments, Set urpColleges, Set urpClasses,
			Set urpInstructions) {
		this.teacherNo = teacherNo;
		this.college = college;
		this.department = department;
		this.name = name;
		this.password = password;
		this.sex = sex;
		this.phone = phone;
		this.post = post;
		this.urpTeachCourses = urpTeachCourses;
		this.urpDepartments = urpDepartments;
		this.urpColleges = urpColleges;
		this.urpClasses = urpClasses;
		this.urpInstructions = urpInstructions;
	}

	// Property accessors

	public String getTeacherNo() {
		return this.teacherNo;
	}

	public void setTeacherNo(String teacherNo) {
		this.teacherNo = teacherNo;
	}

	public UrpCollege getCollege() {
		return this.college;
	}

	public void setCollege(UrpCollege college) {
		this.college = college;
	}

	public UrpDepartment getDepartment() {
		return this.department;
	}

	public void setDepartment(UrpDepartment department) {
		this.department = department;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPost() {
		return this.post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public Set getUrpTeachCourses() {
		return this.urpTeachCourses;
	}

	public void setUrpTeachCourses(Set urpTeachCourses) {
		this.urpTeachCourses = urpTeachCourses;
	}

	public Set getUrpDepartments() {
		return this.urpDepartments;
	}

	public void setUrpDepartments(Set urpDepartments) {
		this.urpDepartments = urpDepartments;
	}

	public Set getUrpColleges() {
		return this.urpColleges;
	}

	public void setUrpColleges(Set urpColleges) {
		this.urpColleges = urpColleges;
	}

	public Set getUrpClasses() {
		return this.urpClasses;
	}

	public void setUrpClasses(Set urpClasses) {
		this.urpClasses = urpClasses;
	}

	public Set getUrpInstructions() {
		return this.urpInstructions;
	}

	public void setUrpInstructions(Set urpInstructions) {
		this.urpInstructions = urpInstructions;
	}

}