package com.arun.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

/**
 * Created by arun on 30/09/18.
 */
@Entity(name = "ted_talk")
public class TedTalk extends BaseEntity {
    @Column(name = "description")
    private String description;

    @Column(name = "event")
    private String event;

    @Column(name = "main_speaker")
    private String mainSpeaker;

    @Column(name = "name")
    private String name;

    @Column(name = "publishdate")
    private Date publishDate;

    @Column(name = "speaker_occupation")
    private String speakerOccupation;

    @Column(name = "title")
    private String title;

    @Column(name = "url")
    private String url;

    @Column(name = "views")
    private long views;


    @ManyToMany(cascade = {CascadeType.MERGE})
    @JoinTable(
            name = "ted_related_talk_join",
            joinColumns = {@JoinColumn(name = "ted_talk_id")},
            inverseJoinColumns = {@JoinColumn(name = "related_talk_id")}
    )
    private Set<RelatedTalk> relatedTalks;

    @JoinColumn(name = "ted_talk_id")
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<TedTalkRating> tedTalkRatings;


//    @ElementCollection
//    @JoinTable(
//            name = "ted_talks_tags_join",
//            joinColumns = {@JoinColumn(name = "ted_talk_id")},
//            inverseJoinColumns = {@JoinColumn(name = "tag_id")}
//    )
//    @Column(name="name")

    @ManyToMany(cascade = {CascadeType.MERGE})
    @JoinTable(
            name = "ted_talks_tags_join",
            joinColumns = {@JoinColumn(name = "ted_talk_id")},
            inverseJoinColumns = {@JoinColumn(name = "tag_id")}
    )
    private Set<Tag> tags;



    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getMainSpeaker() {
        return mainSpeaker;
    }

    public void setMainSpeaker(String mainSpeaker) {
        this.mainSpeaker = mainSpeaker;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public String getSpeakerOccupation() {
        return speakerOccupation;
    }

    public void setSpeakerOccupation(String speakerOccupation) {
        this.speakerOccupation = speakerOccupation;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public long getViews() {
        return views;
    }

    public void setViews(long views) {
        this.views = views;
    }

    public Set<RelatedTalk> getRelatedTalks() {
        return relatedTalks;
    }

    public void setRelatedTalks(Set<RelatedTalk> relatedTalks) {
        this.relatedTalks = relatedTalks;
    }

    public Set<TedTalkRating> getTedTalkRatings() {
        return tedTalkRatings;
    }

    public void setTedTalkRatings(Set<TedTalkRating> tedTalkRatings) {
        this.tedTalkRatings = tedTalkRatings;
    }

    public Set<Tag> getTags() {
        return tags;
    }

    public void setTags(Set<Tag> tags) {
        this.tags = tags;
    }
}
