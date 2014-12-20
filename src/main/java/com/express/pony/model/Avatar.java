package com.express.pony.model;

import javax.persistence.*;

@Entity
public class Avatar implements java.io.Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long avatarId;
	@Lob
	private byte[] image;
 
	public Avatar() {
	}
 
	public Avatar(byte[] image) {
		this.image = image;
	}

	public Long getAvatarId() {
		return avatarId;
	}

	public void setAvatarId(Long avatarId) {
		this.avatarId = avatarId;
	}

	public byte[] getImage() {
		return this.image;
	}
 
	public void setImage(byte[] image) {
		this.image = image;
	}
 
}