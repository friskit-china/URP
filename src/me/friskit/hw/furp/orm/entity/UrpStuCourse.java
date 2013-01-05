package me.friskit.hw.furp.orm.entity;

import java.util.Date;

/**
 * UrpStuCourse entity. @author MyEclipse Persistence Tools
 */

public class UrpStuCourse implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -6929499788820100821L;
	private UrpStuCourseId id;
	private Short score;
	private Date inputtime;

	// Constructors

	/** default constructor */
	public UrpStuCourse() {
	}

	/** minimal constructor */
	public UrpStuCourse(UrpStuCourseId id, Date inputtime) {
		this.id = id;
		this.inputtime = inputtime;
	}

	/** full constructor */
	public UrpStuCourse(UrpStuCourseId id, Short score, Date inputtime) {
		this.id = id;
		this.score = score;
		this.inputtime = inputtime;
	}

	// Property accessors

	public UrpStuCourseId getId() {
		return this.id;
	}

	public void setId(UrpStuCourseId id) {
		this.id = id;
	}

	public Short getScore() {
		return this.score;
	}

	public void setScore(Short score) {
		this.score = score;
	}

	public Date getInputtime() {
		return this.inputtime;
	}

	public void setInputtime(Date inputtime) {
		this.inputtime = inputtime;
	}

}