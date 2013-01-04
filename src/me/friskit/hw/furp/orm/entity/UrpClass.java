package me.friskit.hw.furp.orm.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * UrpClass entity. @author MyEclipse Persistence Tools
 */

public class UrpClass implements java.io.Serializable {

	// Fields

	private String classNo;
	private UrpStudent monitor;
	private UrpTeacher manager;
	private String name;
	private String kind;
	private Set urpStuClasses = new HashSet(0);
	private Set urpInstructions = new HashSet(0);

	// Constructors

	/** default constructor */
	public UrpClass() {
	}

	/** minimal constructor */
	public UrpClass(String classNo, String name) {
		this.classNo = classNo;
		this.name = name;
	}

	/** full constructor */
	public UrpClass(String classNo, UrpStudent monitor,
			UrpTeacher manager, String name, String kind, Set urpStuClasses,
			Set urpInstructions) {
		this.classNo = classNo;
		this.monitor = monitor;
		this.manager = manager;
		this.name = name;
		this.kind = kind;
		this.urpStuClasses = urpStuClasses;
		this.urpInstructions = urpInstructions;
	}

	// Property accessors

	public String getClassNo() {
		return this.classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}

	public UrpStudent getMonitor() {
		return this.monitor;
	}

	public void setMonitor(UrpStudent monitor) {
		this.monitor = monitor;
	}

	public UrpTeacher getManager() {
		return this.manager;
	}

	public void setManager(UrpTeacher manager) {
		this.manager = manager;
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

	public Set getUrpStuClasses() {
		return this.urpStuClasses;
	}

	public void setUrpStuClasses(Set urpStuClasses) {
		this.urpStuClasses = urpStuClasses;
	}

	public Set getUrpInstructions() {
		return this.urpInstructions;
	}

	public void setUrpInstructions(Set urpInstructions) {
		this.urpInstructions = urpInstructions;
	}

}