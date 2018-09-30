package com.arun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * Created by sumit on 30/09/18.
 */
@Entity(name = "related_talk")
public class RelatedTalk extends BaseEntity {
    @Column(name = "hero")
    private String hero;

    @Column(name = "speaker")
    private String speaker;

    @Column(name = "title")
    private String title;

    @Column(name = "duration")
    private long duration;

    @Column(name = "slug")
    private String slug;

    @Column(name = "viewed_count")
    private long viewedCount;

    public String getHero() {
        return hero;
    }

    public void setHero(String hero) {
        this.hero = hero;
    }

    public String getSpeaker() {
        return speaker;
    }

    public void setSpeaker(String speaker) {
        this.speaker = speaker;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public long getViewedCount() {
        return viewedCount;
    }

    public void setViewedCount(long viewedCount) {
        this.viewedCount = viewedCount;
    }
}
