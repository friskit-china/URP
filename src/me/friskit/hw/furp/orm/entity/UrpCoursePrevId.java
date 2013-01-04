package me.friskit.hw.furp.orm.entity;

/**
 * UrpCoursePrevId entity. @author MyEclipse Persistence Tools
 */

public class UrpCoursePrevId implements java.io.Serializable {

	// Fields

	private UrpCourse courseNo;
	private UrpCourse coursePrevNo;

	// Constructors

	/** default constructor */
	public UrpCoursePrevId() {
	}

	/** full constructor */
	public UrpCoursePrevId(UrpCourse courseNo, UrpCourse coursePrevNo) {
		this.courseNo = courseNo;
		this.coursePrevNo = coursePrevNo;
	}

	// Property accessors

	public UrpCourse getCourseNo() {
		return this.courseNo;
	}

	public void setCourseNo(UrpCourse courseNo) {
		this.courseNo = courseNo;
	}

	public UrpCourse getCoursePrevNo() {
		return this.coursePrevNo;
	}

	public void setCoursePrevNo(UrpCourse coursePrevNo) {
		this.coursePrevNo = coursePrevNo;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UrpCoursePrevId))
			return false;
		UrpCoursePrevId castOther = (UrpCoursePrevId) other;

		return ((this.getCourseNo() == castOther.getCourseNo()) || (this
				.getCourseNo() != null && castOther.getCourseNo() != null && this
				.getCourseNo().equals(castOther.getCourseNo())))
				&& ((this.getCoursePrevNo() == castOther.getCoursePrevNo()) || (this
						.getCoursePrevNo() != null
						&& castOther.getCoursePrevNo() != null && this
						.getCoursePrevNo().equals(castOther.getCoursePrevNo())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getCourseNo() == null ? 0 : this.getCourseNo().hashCode());
		result = 37
				* result
				+ (getCoursePrevNo() == null ? 0 : this.getCoursePrevNo()
						.hashCode());
		return result;
	}

}