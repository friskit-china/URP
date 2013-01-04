package me.friskit.hw.furp.orm.entity;

/**
 * UrpStuClassId entity. @author MyEclipse Persistence Tools
 */

public class UrpStuClassId implements java.io.Serializable {

	// Fields

	private UrpStudent student;
	private UrpClass uclass;

	// Constructors

	/** default constructor */
	public UrpStuClassId() {
	}

	/** full constructor */
	public UrpStuClassId(UrpStudent student, UrpClass uclass) {
		this.student = student;
		this.uclass = uclass;
	}

	// Property accessors

	public UrpStudent getStudent() {
		return this.student;
	}

	public void setStudent(UrpStudent student) {
		this.student = student;
	}

	public UrpClass getUclass() {
		return this.uclass;
	}

	public void setUclass(UrpClass uclass) {
		this.uclass = uclass;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UrpStuClassId))
			return false;
		UrpStuClassId castOther = (UrpStuClassId) other;

		return ((this.getStudent() == castOther.getStudent()) || (this
				.getStudent() != null && castOther.getStudent() != null && this
				.getStudent().equals(castOther.getStudent())))
				&& ((this.getUclass() == castOther.getUclass()) || (this
						.getUclass() != null
						&& castOther.getUclass() != null && this
						.getUclass().equals(castOther.getUclass())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getStudent() == null ? 0 : this.getStudent()
						.hashCode());
		result = 37 * result
				+ (getUclass() == null ? 0 : this.getUclass().hashCode());
		return result;
	}

}