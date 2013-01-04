package me.friskit.hw.furp.orm.entity;

/**
 * UrpStuCourseId entity. @author MyEclipse Persistence Tools
 */

public class UrpStuCourseId implements java.io.Serializable {

	// Fields

	private UrpStudent student;
	private UrpCourse course;

	// Constructors

	/** default constructor */
	public UrpStuCourseId() {
	}

	/** full constructor */
	public UrpStuCourseId(UrpStudent student, UrpCourse course) {
		this.student = student;
		this.course = course;
	}

	// Property accessors

	public UrpStudent getStudent() {
		return this.student;
	}

	public void setStudent(UrpStudent student) {
		this.student = student;
	}

	public UrpCourse getCourse() {
		return this.course;
	}

	public void setCourse(UrpCourse urpCourse) {
		this.course = course;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UrpStuCourseId))
			return false;
		UrpStuCourseId castOther = (UrpStuCourseId) other;

		return ((this.getStudent() == castOther.getStudent()) || (this
				.getStudent() != null && castOther.getStudent() != null && this
				.getStudent().equals(castOther.getStudent())))
				&& ((this.getCourse() == castOther.getCourse()) || (this
						.getCourse() != null
						&& castOther.getCourse() != null && this
						.getCourse().equals(castOther.getCourse())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getStudent() == null ? 0 : this.getStudent()
						.hashCode());
		result = 37 * result
				+ (getCourse() == null ? 0 : this.getCourse().hashCode());
		return result;
	}

}