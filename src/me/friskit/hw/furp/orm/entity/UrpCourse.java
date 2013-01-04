package me.friskit.hw.furp.orm.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * UrpCourse entity. @author MyEclipse Persistence Tools
 */

public class UrpCourse implements java.io.Serializable {

	// Fields

	private String courseNo;
	private String kind;
	private String name;
	private Double credit;
	private String introduction;
	private Set urpStuCourses = new HashSet(0);
	private Set urpTeachCourses = new HashSet(0);
	private Set urpCoursePrevsForCoursePrevNo = new HashSet(0);
	private Set urpInstructions = new HashSet(0);
	private Set urpCoursePrevsForCourseNo = new HashSet(0);

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
			String introduction, Set urpStuCourses, Set urpTeachCourses,
			Set urpCoursePrevsForCoursePrevNo, Set urpInstructions,
			Set urpCoursePrevsForCourseNo) {
		this.courseNo = courseNo;
		this.kind = kind;
		this.name = name;
		this.credit = credit;
		this.introduction = introduction;
		this.urpStuCourses = urpStuCourses;
		this.urpTeachCourses = urpTeachCourses;
		this.urpCoursePrevsForCoursePrevNo = urpCoursePrevsForCoursePrevNo;
		this.urpInstructions = urpInstructions;
		this.urpCoursePrevsForCourseNo = urpCoursePrevsForCourseNo;
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

	public Set getUrpStuCourses() {
		return this.urpStuCourses;
	}

	public void setUrpStuCourses(Set urpStuCourses) {
		this.urpStuCourses = urpStuCourses;
	}

	public Set getUrpTeachCourses() {
		return this.urpTeachCourses;
	}

	public void setUrpTeachCourses(Set urpTeachCourses) {
		this.urpTeachCourses = urpTeachCourses;
	}

	public Set getUrpCoursePrevsForCoursePrevNo() {
		return this.urpCoursePrevsForCoursePrevNo;
	}

	public void setUrpCoursePrevsForCoursePrevNo(
			Set urpCoursePrevsForCoursePrevNo) {
		this.urpCoursePrevsForCoursePrevNo = urpCoursePrevsForCoursePrevNo;
	}

	public Set getUrpInstructions() {
		return this.urpInstructions;
	}

	public void setUrpInstructions(Set urpInstructions) {
		this.urpInstructions = urpInstructions;
	}

	public Set getUrpCoursePrevsForCourseNo() {
		return this.urpCoursePrevsForCourseNo;
	}

	public void setUrpCoursePrevsForCourseNo(Set urpCoursePrevsForCourseNo) {
		this.urpCoursePrevsForCourseNo = urpCoursePrevsForCourseNo;
	}

}