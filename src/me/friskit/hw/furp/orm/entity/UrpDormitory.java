package me.friskit.hw.furp.orm.entity;


/**
 * UrpDormitory entity. @author MyEclipse Persistence Tools
 */

public class UrpDormitory implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -8886392622411263023L;
	private String dormNo;
	private UrpStudent manager;
	private String buildNo;
	private String apartmentNo;
	private String sex;
	private Byte stuNum;
	private String phone;

	// Constructors

	/** default constructor */
	public UrpDormitory() {
	}

	/** minimal constructor */
	public UrpDormitory(String dormNo, String buildNo, String apartmentNo,
			String sex, Byte stuNum) {
		this.dormNo = dormNo;
		this.buildNo = buildNo;
		this.apartmentNo = apartmentNo;
		this.sex = sex;
		this.stuNum = stuNum;
	}

	/** full constructor */
	public UrpDormitory(String dormNo, UrpStudent manager, String buildNo,
			String apartmentNo, String sex, Byte stuNum, String phone) {
		this.dormNo = dormNo;
		this.manager = manager;
		this.buildNo = buildNo;
		this.apartmentNo = apartmentNo;
		this.sex = sex;
		this.stuNum = stuNum;
		this.phone = phone;
	}

	// Property accessors

	public String getDormNo() {
		return this.dormNo;
	}

	public void setDormNo(String dormNo) {
		this.dormNo = dormNo;
	}

	public UrpStudent getManager() {
		return this.manager;
	}

	public void setManager(UrpStudent manager) {
		this.manager = manager;
	}

	public String getBuildNo() {
		return this.buildNo;
	}

	public void setBuildNo(String buildNo) {
		this.buildNo = buildNo;
	}

	public String getApartmentNo() {
		return this.apartmentNo;
	}

	public void setApartmentNo(String apartmentNo) {
		this.apartmentNo = apartmentNo;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Byte getStuNum() {
		return this.stuNum;
	}

	public void setStuNum(Byte stuNum) {
		this.stuNum = stuNum;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}