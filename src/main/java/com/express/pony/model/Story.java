package com.express.pony.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

@Entity
public class Story implements Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private long storyId;
//    @Column(nullable = false)
    private String storyName;
//    @Column(nullable = false)
    private long createdTimeStamp;
    @ManyToOne
    private User initiator;
//    @Column(nullable = false)
    private String summary;
//    @Column(nullable = false)
    private Genre genre;
//    @Column(nullable = false)
    private String language;

    @OneToOne(cascade=CascadeType.ALL)
    private StorySpec storySpec;

    @OneToMany(cascade=CascadeType.ALL)
    private List<StoryPart> storyParts;


	public long getStoryId() {
		return storyId;
	}

	public void setStoryId(long storyId) {
		this.storyId = storyId;
	}

	public String getStoryName() {
		return storyName;
	}

	public void setStoryName(String storyName) {
		this.storyName = storyName;
	}

	public long getCreatedTimeStamp() {
		return createdTimeStamp;
	}

	public void setCreatedTimeStamp(long createdTimeStamp) {
		this.createdTimeStamp = createdTimeStamp;
	}

	public User getInitiator() {
		return initiator;
	}

	public void setInitiator(User initiator) {
		this.initiator = initiator;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public void setStorySpec(StorySpec storySpec) {
		this.storySpec = storySpec;
	}

	public StorySpec getStorySpec() {
		return storySpec;
	}

	public void setStoryParts(List<StoryPart> storyParts) {
		this.storyParts = storyParts;
	}

	public void addStoryPart(StoryPart storyPart) {
		storyParts.add(storyPart);
	}

	public List<StoryPart> getStoryParts() {
		return Collections.unmodifiableList(storyParts);
	}

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Story{");
        sb.append("storyId=").append(storyId);
        sb.append(", storyName='").append(storyName).append('\'');
        sb.append(", createdTimeStamp=").append(createdTimeStamp);
        sb.append(", initiator=").append(initiator);
        sb.append(", summary='").append(summary).append('\'');
        sb.append(", genre=").append(genre);
        sb.append(", language='").append(language).append('\'');
        sb.append(", storySpec=").append(storySpec);
        sb.append(", storyParts=").append(storyParts);
        sb.append('}');
        return sb.toString();
    }
}