package me.friskit.hw.furp.orm.entity;

/**
 * UrpCourse entity. @author MyEclipse Persistence Tools
 */

public class UrpCourse implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 5663606432480538843L;
	private String courseNo;
	private String kind;
	private String name;
	private Double credit;
	private String introduction;

	// Constructors

	/** default constructor */
	public UrpCourse() {
	}

	/** minimal constructor */
	public UrpCourse(String courseNo, String kind, String name, Double credit) {
		this.courseNo = courseNo;
		this.kind = kind;
		this.name = name;
		this.credit = credit;
	}

	/** full constructor */
	public UrpCourse(String courseNo, String kind, String name, Double credit,
			String introduction) {
		this.courseNo = courseNo;
		this.kind = kind;
		this.name = name;
		this.credit = credit;
		this.introduction = introduction;
	}

	// Property accessors

	public String getCourseNo() {
		return this.courseNo;
	}

	public void setCourseNo(String courseNo) {
		this.courseNo = courseNo;
	}

	public String getKind() {
		return this.kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getCredit() {
		return this.credit;
	}

	public void setCredit(Double credit) {
		this.credit = credit;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
}