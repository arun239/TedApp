package com.arun.repository;

import com.arun.entity.Tag;
import com.arun.entity.TedTalk;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import java.util.List;

/**
 * Created by sumit on 30/09/18.
 */
@RepositoryRestResource
public interface TedTalkRepository extends PagingAndSortingRepository<TedTalk, Long> {
    @RestResource(exported = true)
    List<TedTalk> findAllByEvent(@Param("event") String event);
}
