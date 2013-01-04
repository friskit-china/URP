package me.friskit.hw.furp.orm.entity;

/**
 * UrpCoursePrev entity. @author MyEclipse Persistence Tools
 */

public class UrpCoursePrev implements java.io.Serializable {

	// Fields

	private UrpCoursePrevId id;

	// Constructors

	/** default constructor */
	public UrpCoursePrev() {
	}

	/** full constructor */
	public UrpCoursePrev(UrpCoursePrevId id) {
		this.id = id;
	}

	// Property accessors

	public UrpCoursePrevId getId() {
		return this.id;
	}

	public void setId(UrpCoursePrevId id) {
		this.id = id;
	}

}