package me.friskit.hw.furp.orm.entity;

/**
 * UrpTeachCourse entity. @author MyEclipse Persistence Tools
 */

public class UrpTeachCourse implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8816425629492933578L;
	private UrpTeachCourseId id;
	private String comments;

	// Constructors

	/** default constructor */
	public UrpTeachCourse() {
	}

	/** minimal constructor */
	public UrpTeachCourse(UrpTeachCourseId id) {
		this.id = id;
	}

	/** full constructor */
	public UrpTeachCourse(UrpTeachCourseId id, String comments) {
		this.id = id;
		this.comments = comments;
	}

	// Property accessors

	public UrpTeachCourseId getId() {
		return this.id;
	}

	public void setId(UrpTeachCourseId id) {
		this.id = id;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

}