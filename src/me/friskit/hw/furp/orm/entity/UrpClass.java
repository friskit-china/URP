package me.friskit.hw.furp.orm.entity;

/**
 * UrpClass entity. @author MyEclipse Persistence Tools
 */

public class UrpClass implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 2022956575249789236L;
	private String classNo;
	private UrpStudent monitor;
	private UrpTeacher manager;
	private String name;
	private String kind;

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
			UrpTeacher manager, String name, String kind) {
		
		this.classNo = classNo;
		this.monitor = monitor;
		this.manager = manager;
		this.name = name;
		this.kind = kind;
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
}