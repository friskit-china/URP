package me.friskit.hw.furp.orm.entity;

import java.util.Date;

/**
 * UrpStuClass entity. @author MyEclipse Persistence Tools
 */

public class UrpStuClass implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 4220921436343141646L;
	private UrpStuClassId id;
	private Date inputtime;

	// Constructors

	/** default constructor */
	public UrpStuClass() {
	}

	/** full constructor */
	public UrpStuClass(UrpStuClassId id, Date inputtime) {
		this.id = id;
		this.inputtime = inputtime;
	}

	// Property accessors

	public UrpStuClassId getId() {
		return this.id;
	}

	public void setId(UrpStuClassId id) {
		this.id = id;
	}

	public Date getInputtime() {
		return this.inputtime;
	}

	public void setInputtime(Date inputtime) {
		this.inputtime = inputtime;
	}

}