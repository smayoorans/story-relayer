package com.express.pony.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class StoryPart implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private long storyPartID;
    @Column(length = 4096)
    private String partContent;

    @ManyToOne
    private User author;

    private short reviewStars;
    private int orderIndex;
    private boolean isDraft;

    public long getStoryPartID() {
        return storyPartID;
    }

    public void setStoryPartID(long storyPartID) {
        this.storyPartID = storyPartID;
    }

    public String getPartContent() {
        return partContent;
    }

    public void setPartContent(String partContent) {
        this.partContent = partContent;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public short getReviewStars() {
        return reviewStars;
    }

    public void setReviewStars(short reviewStars) {
        this.reviewStars = reviewStars;
    }

    public int getOrderIndex() {
        return orderIndex;
    }

    public void setOrderIndex(int orderIndex) {
        this.orderIndex = orderIndex;
    }

    public boolean isDraft() {
        return isDraft;
    }

    public void setDraft(boolean isDraft) {
        this.isDraft = isDraft;
    }


}
