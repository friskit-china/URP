package me.friskit.hw.furp.orm.entity;

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
			String phone, String introduction) {
		this.collegeNo = collegeNo;
		this.president = president;
		this.name = name;
		this.phone = phone;
		this.introduction = introduction;
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
}