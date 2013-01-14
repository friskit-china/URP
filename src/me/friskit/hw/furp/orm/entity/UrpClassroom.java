package me.friskit.hw.furp.orm.entity;

/**
 * UrpClassroom entity. @author MyEclipse Persistence Tools
 */

public class UrpClassroom implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -7726199079341372931L;
	private String classroomNo;
	private String name;
	private String kind;
	private Short capacity;
	private String comments;

	// Constructors

	/** default constructor */
	public UrpClassroom() {
	}

	/** minimal constructor */
	public UrpClassroom(String classroomNo, String kind, Short capacity) {
		this.classroomNo = classroomNo;
		this.kind = kind;
		this.capacity = capacity;
	}

	/** full constructor */
	public UrpClassroom(String classroomNo, String name, String kind,
			Short capacity, String comments) {
		this.classroomNo = classroomNo;
		this.name = name;
		this.kind = kind;
		this.capacity = capacity;
		this.comments = comments;
	}

	// Property accessors

	public String getClassroomNo() {
		return this.classroomNo;
	}

	public void setClassroomNo(String classroomNo) {
		this.classroomNo = classroomNo;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKind() {
		return this.kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public Short getCapacity() {
		return this.capacity;
	}

	public void setCapacity(Short capacity) {
		this.capacity = capacity;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}
}