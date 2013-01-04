package me.friskit.hw.furp.orm.entity;

/**
 * UrpUserdictId entity. @author MyEclipse Persistence Tools
 */

public class UrpUserdictId implements java.io.Serializable {

	// Fields

	private String category;
	private String ccode;

	// Constructors

	/** default constructor */
	public UrpUserdictId() {
	}

	/** full constructor */
	public UrpUserdictId(String category, String ccode) {
		this.category = category;
		this.ccode = ccode;
	}

	// Property accessors

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCcode() {
		return this.ccode;
	}

	public void setCcode(String ccode) {
		this.ccode = ccode;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof UrpUserdictId))
			return false;
		UrpUserdictId castOther = (UrpUserdictId) other;

		return ((this.getCategory() == castOther.getCategory()) || (this
				.getCategory() != null && castOther.getCategory() != null && this
				.getCategory().equals(castOther.getCategory())))
				&& ((this.getCcode() == castOther.getCcode()) || (this
						.getCcode() != null && castOther.getCcode() != null && this
						.getCcode().equals(castOther.getCcode())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getCategory() == null ? 0 : this.getCategory().hashCode());
		result = 37 * result
				+ (getCcode() == null ? 0 : this.getCcode().hashCode());
		return result;
	}

}