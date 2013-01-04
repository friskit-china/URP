package me.friskit.hw.furp.orm.entity;

/**
 * UrpUserdict entity. @author MyEclipse Persistence Tools
 */

public class UrpUserdict implements java.io.Serializable {

	// Fields

	private UrpUserdictId id;
	private String ctext;

	// Constructors

	/** default constructor */
	public UrpUserdict() {
	}

	/** full constructor */
	public UrpUserdict(UrpUserdictId id, String ctext) {
		this.id = id;
		this.ctext = ctext;
	}

	// Property accessors

	public UrpUserdictId getId() {
		return this.id;
	}

	public void setId(UrpUserdictId id) {
		this.id = id;
	}

	public String getCtext() {
		return this.ctext;
	}

	public void setCtext(String ctext) {
		this.ctext = ctext;
	}

}