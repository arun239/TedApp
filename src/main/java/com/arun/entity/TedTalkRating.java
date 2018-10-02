package com.arun.entity;

import javax.persistence.*;

/**
 * Created by arun on 30/09/18.
 */
@Entity(name = "ted_talks_ratings")
public class TedTalkRating extends BaseEntity {

    @Column(name = "count")
    private long count;

    @JoinColumn(name = "rating_tag_id")
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private RatingTag ratingTag;

    @Column(name = "ted_talk_id")
    private long tedTalkId;


    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public RatingTag getRatingTag() {
        return ratingTag;
    }

    public void setRatingTag(RatingTag ratingTag) {
        this.ratingTag = ratingTag;
    }

    public long getTedTalkId() {
        return tedTalkId;
    }

    public void setTedTalkId(long tedTalkId) {
        this.tedTalkId = tedTalkId;
    }
}
