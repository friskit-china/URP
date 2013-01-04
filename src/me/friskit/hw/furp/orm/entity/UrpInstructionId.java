package me.friskit.hw.furp.orm.entity;

/**
 * UrpInstructionId entity. @author MyEclipse Persistence Tools
 */

public class UrpInstructionId implements java.io.Serializable {

	// Fields

	private UrpTeacher teacher;
	private UrpCourse course;
	private UrpClassroom classroom;
	private UrpClass uclass;
	private String instructTime;
	private String instructTerm;

	// Constructors

	/** default constructor */
	public UrpInstructionId() {
	}

	/** full constructor */
	public UrpInstructionId(UrpTeacher teacher, UrpCourse course,
			UrpClassroom classroom, UrpClass uclass, String instructTime,
			String instructTerm) {
		this.teacher = teacher;
		this.course = course;
		this.classroom = classroom;
		this.uclass = uclass;
		this.instructTime = instructTime;
		this.instructTerm = instructTerm;
	}

	// Property accessors

	public UrpTeacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(UrpTeacher urpTeacher) {
		this.teacher = urpTeacher;
	}

	public UrpCourse getCourse() {
		return this.course;
	}

	public void setCourse(UrpCourse course) {
		this.course = course;
	}

	public UrpClassroom getClassroom() {
		return this.classroom;
	}

	public void setClassroom(UrpClassroom classroom) {
		this.classroom = classroom;
	}

	public UrpClass getUclass() {
		return this.uclass;
	}

	public void setUclass(UrpClass uclass) {
		this.uclass = uclass;
	}

	public String getInstructTime() {
		return this.instructTime;
	}

	public void setInstructTime(String instructTime) {
		this.instructTime = instructTime;
	}

	public String getInstructTerm() {
		return this.instructTerm;
	}

	public void setInstructTerm(String instructTerm) {
		this.instructTerm = instructTerm;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UrpInstructionId))
			return false;
		UrpInstructionId castOther = (UrpInstructionId) other;

		return ((this.getTeacher() == castOther.getTeacher()) || (this
				.getTeacher() != null && castOther.getTeacher() != null && this
				.getTeacher().equals(castOther.getTeacher())))
				&& ((this.getCourse() == castOther.getCourse()) || (this
						.getCourse() != null
						&& castOther.getCourse() != null && this
						.getCourse().equals(castOther.getCourse())))
				&& ((this.getClassroom() == castOther.getClassroom()) || (this
						.getClassroom() != null
						&& castOther.getClassroom() != null && this
						.getClassroom().equals(castOther.getClassroom())))
				&& ((this.getUclass() == castOther.getUclass()) || (this
						.getUclass() != null
						&& castOther.getUclass() != null && this
						.getUclass().equals(castOther.getUclass())))
				&& ((this.getInstructTime() == castOther.getInstructTime()) || (this
						.getInstructTime() != null
						&& castOther.getInstructTime() != null && this
						.getInstructTime().equals(castOther.getInstructTime())))
				&& ((this.getInstructTerm() == castOther.getInstructTerm()) || (this
						.getInstructTerm() != null
						&& castOther.getInstructTerm() != null && this
						.getInstructTerm().equals(castOther.getInstructTerm())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getTeacher() == null ? 0 : this.getTeacher()
						.hashCode());
		result = 37 * result
				+ (getCourse() == null ? 0 : this.getCourse().hashCode());
		result = 37
				* result
				+ (getClassroom() == null ? 0 : this.getClassroom()
						.hashCode());
		result = 37 * result
				+ (getUclass() == null ? 0 : this.getUclass().hashCode());
		result = 37
				* result
				+ (getInstructTime() == null ? 0 : this.getInstructTime()
						.hashCode());
		result = 37
				* result
				+ (getInstructTerm() == null ? 0 : this.getInstructTerm()
						.hashCode());
		return result;
	}

}