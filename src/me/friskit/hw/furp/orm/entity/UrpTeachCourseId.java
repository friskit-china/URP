package me.friskit.hw.furp.orm.entity;

/**
 * UrpTeachCourseId entity. @author MyEclipse Persistence Tools
 */

public class UrpTeachCourseId implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 5797636205435829844L;
	private UrpTeacher teacher;
	private UrpCourse course;

	// Constructors

	/** default constructor */
	public UrpTeachCourseId() {
	}

	/** full constructor */
	public UrpTeachCourseId(UrpTeacher teacher, UrpCourse course) {
		this.teacher = teacher;
		this.course = course;
	}

	// Property accessors

	public UrpTeacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(UrpTeacher teacher) {
		this.teacher = teacher;
	}

	public UrpCourse getCourse() {
		return this.course;
	}

	public void setCourse(UrpCourse course) {
		this.course = course;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UrpTeachCourseId))
			return false;
		UrpTeachCourseId castOther = (UrpTeachCourseId) other;

		return ((this.getTeacher() == castOther.getTeacher()) || (this
				.getTeacher() != null && castOther.getTeacher() != null && this
				.getTeacher().equals(castOther.getTeacher())))
				&& ((this.getCourse() == castOther.getCourse()) || (this
						.getCourse() != null
						&& castOther.getCourse() != null && this
						.getCourse().equals(castOther.getCourse())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getTeacher() == null ? 0 : this.getTeacher()
						.hashCode());
		result = 37 * result
				+ (getCourse() == null ? 0 : this.getCourse().hashCode());
		return result;
	}

}