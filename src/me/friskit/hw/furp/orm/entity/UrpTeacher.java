package me.friskit.hw.furp.orm.entity;

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
	private String teacherName;
	private String password;
	private String sex;
	private String phone;
	private String post;

	// Constructors

	/** default constructor */
	public UrpTeacher() {
	}

	/** minimal constructor */
	public UrpTeacher(String teacherNo, String teacherName, String password, String sex) {
		this.teacherNo = teacherNo;
		this.teacherName = teacherName;
		this.password = password;
		this.sex = sex;
	}

	/** full constructor */
	public UrpTeacher(String teacherNo, UrpCollege college,
			UrpDepartment department, String teacherName, String password,
			String sex, String phone, String post) {
		this.teacherNo = teacherNo;
		this.college = college;
		this.department = department;
		this.teacherName = teacherName;
		this.password = password;
		this.sex = sex;
		this.phone = phone;
		this.post = post;
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

	public String getTeacherName() {
		return this.teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
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
}