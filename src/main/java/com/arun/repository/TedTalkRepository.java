package com.arun.repository;

import com.arun.entity.Tag;
import com.arun.entity.TedTalk;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Set;

/**
 * Created by arun on 30/09/18.
 */
@CrossOrigin
@RepositoryRestResource(path = "/tedtalk")
public interface TedTalkRepository extends PagingAndSortingRepository<TedTalk, Long> {
//    @RestResource(exported = true)
//    List<TedTalk> findAllByEvent(@Param("event") String event);

    @RestResource(exported = true)
    @Query(
            nativeQuery = true,
            value = "select * from ted_talk where id in (select distinct(tj.ted_talk_id) from ted_talks_tags_join tj where " +
                    "tj.tag_id in (select t.id from tag t where t.name in :tags)) and event = :event order by id limit :offset, :pageSize"
    )
    List<TedTalk> search(@Param("tags") Set<String> tags, @Param("event") String event, @Param("offset") Long offset, @Param("pageSize") Long pageSize);
}
