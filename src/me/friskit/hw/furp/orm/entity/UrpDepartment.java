package me.friskit.hw.furp.orm.entity;

/**
 * UrpDepartment entity. @author MyEclipse Persistence Tools
 */

public class UrpDepartment implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -3642334182224320519L;
	private String departNo;
	private UrpTeacher departmentHeader;
	private UrpCollege college;
	private String name;
	private String phone;
	private String introduction;

	// Constructors

	/** default constructor */
	public UrpDepartment() {
	}

	/** minimal constructor */
	public UrpDepartment(String departNo, UrpCollege college, String name) {
		this.departNo = departNo;
		this.college = college;
		this.name = name;
	}

	/** full constructor */
	public UrpDepartment(String departNo, UrpTeacher departmentHeader,
			UrpCollege college, String name, String phone,
			String introduction) {
		this.departNo = departNo;
		this.departmentHeader = departmentHeader;
		this.college = college;
		this.name = name;
		this.phone = phone;
		this.introduction = introduction;
	}

	// Property accessors

	public String getDepartNo() {
		return this.departNo;
	}

	public void setDepartNo(String departNo) {
		this.departNo = departNo;
	}

	public UrpTeacher getDepartmentHeader() {
		return this.departmentHeader;
	}

	public void setDepartmentHeader(UrpTeacher departmentHeader) {
		this.departmentHeader = departmentHeader;
	}

	public UrpCollege getCollege() {
		return this.college;
	}

	public void setCollege(UrpCollege college) {
		this.college = college;
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
}