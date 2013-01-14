package me.friskit.hw.furp.orm.entity;

import java.util.Date;

/**
 * UrpStudent entity. @author MyEclipse Persistence Tools
 */

public class UrpStudent implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 4831099715011685158L;
	private String stuNo;
	private UrpDormitory dormitory;
	private String name;
	private String password;
	private String nation;
	private String sex;
	private Date birthday;
	private String polity;
	private String source;
	private Short score;
	private String homePhone;
	private String address;
	private Date inputtime;

	// Constructors

	/** default constructor */
	public UrpStudent() {
	}

	/** minimal constructor */
	public UrpStudent(String stuNo, String name, String password, String sex,
			Date inputtime) {
		this.stuNo = stuNo;
		this.name = name;
		this.password = password;
		this.sex = sex;
		this.inputtime = inputtime;
	}

	/** full constructor */
	public UrpStudent(String stuNo, UrpDormitory dormitory, String name,
			String password, String nation, String sex, Date birthday,
			String polity, String source, Short score, String homePhone,
			String address, Date inputtime) {
		this.stuNo = stuNo;
		this.dormitory = dormitory;
		this.name = name;
		this.password = password;
		this.nation = nation;
		this.sex = sex;
		this.birthday = birthday;
		this.polity = polity;
		this.source = source;
		this.score = score;
		this.homePhone = homePhone;
		this.address = address;
		this.inputtime = inputtime;
	}

	// Property accessors

	public String getStuNo() {
		return this.stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public UrpDormitory getDormitory() {
		return this.dormitory;
	}

	public void setDormitory(UrpDormitory dormitory) {
		this.dormitory = dormitory;
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

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPolity() {
		return this.polity;
	}

	public void setPolity(String polity) {
		this.polity = polity;
	}

	public String getSource() {
		return this.source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Short getScore() {
		return this.score;
	}

	public void setScore(Short score) {
		this.score = score;
	}

	public String getHomePhone() {
		return this.homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getInputtime() {
		return this.inputtime;
	}

	public void setInputtime(Date inputtime) {
		this.inputtime = inputtime;
	}
}