package com.express.pony.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class StorySpec implements Serializable {

	@Id
	private long storySpecId;
	private RestrictionType restrictionType;

	@ManyToOne
	private User nextNominatedUser;
	private boolean canFork;
	private StoryStatus storyStatus;

	public RestrictionType getRestrictionType() {
		return restrictionType;
	}
	public void setRestrictionType(RestrictionType restrictionType) {
		this.restrictionType = restrictionType;
	}
	public User getNextNominatedUser() {
		return nextNominatedUser;
	}
	public void setNextNominatedUser(User nextNominatedUser) {
		this.nextNominatedUser = nextNominatedUser;
	}
	public boolean isCanFork() {
		return canFork;
	}
	public void setCanFork(boolean canFork) {
		this.canFork = canFork;
	}
	public StoryStatus getStoryStatus() {
		return storyStatus;
	}
	public void setStoryStatus(StoryStatus storyStatus) {
		this.storyStatus = storyStatus;
	}



}
