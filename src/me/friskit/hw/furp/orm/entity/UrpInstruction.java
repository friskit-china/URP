package me.friskit.hw.furp.orm.entity;

/**
 * UrpInstruction entity. @author MyEclipse Persistence Tools
 */

public class UrpInstruction implements java.io.Serializable {

	// Fields

	private UrpInstructionId id;

	// Constructors

	/** default constructor */
	public UrpInstruction() {
	}

	/** full constructor */
	public UrpInstruction(UrpInstructionId id) {
		this.id = id;
	}

	// Property accessors

	public UrpInstructionId getId() {
		return this.id;
	}

	public void setId(UrpInstructionId id) {
		this.id = id;
	}

}