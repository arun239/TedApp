-- start standalone
create table ted_talk (
    id bigint(20) PRIMARY KEY,
    description text,
    event varchar(500) NOT NULL,
    main_speaker varchar(500) NOT NULL,
    name text NOT NULL,
    publishdate datetime NOT NULL,
    speaker_occupation varchar(500),
    title varchar(700) NOT NULL,
    url text NOT NULL,
    views bigint(20) DEFAULT 0,
    createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedat DATETIME DEFAULT NULL
);


create table tag (
    id bigint(20) PRIMARY KEY,
    name varchar(500) NOT NULL,
    createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedat DATETIME DEFAULT NULL
);


create table related_talk (
    id bigint(20) PRIMARY KEY,
    hero varchar(500),
    speaker varchar(500),
    title varchar(700) NOT NULL,
    duration bigint(20) DEFAULT 0,
    slug varchar(500),
    viewed_count bigint(20) DEFAULT 0,
    createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedat DATETIME DEFAULT NULL
);


create table rating_tag (
    id bigint(20) PRIMARY KEY,
    name varchar(500) NOT NULL,
    createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedat DATETIME DEFAULT NULL
);

-- end standalone



-- start join tables
create table ted_related_talk_join (
    id bigint(20) PRIMARY KEY,
    ted_talk_id bigint(20) NOT NULL,
    related_talk_id bigint(20) NOT NULL,
    createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedat DATETIME DEFAULT NULL,
    CONSTRAINT `ted_talk_id_fk_1` FOREIGN KEY (`ted_talk_id`) REFERENCES `ted_talk` (`id`),
    CONSTRAINT `related_talk_id_fk_1` FOREIGN KEY (`related_talk_id`) REFERENCES `related_talk`(`id`)
);

create table ted_talks_tags_join (
    id bigint(20) PRIMARY KEY,
    ted_talk_id bigint(20) NOT NULL,
    tag_id bigint(20) NOT NULL,
    createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedat DATETIME DEFAULT NULL,
    CONSTRAINT `ted_talk_id_fk_2` FOREIGN KEY (`ted_talk_id`) REFERENCES `ted_talk`(`id`),
    CONSTRAINT `tag_id_fk_2` FOREIGN KEY (`tag_id`)  REFERENCES `tag`(`id`)
);

-- end join tables





create table ted_talks_ratings (
    id bigint(20) PRIMARY KEY,
    rating_tag_id bigint(20) NOT NULL,
    ted_talk_id bigint(20) NOT NULL,
    count bigint(20) DEFAULT 0,
    createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedat DATETIME DEFAULT NULL,
    CONSTRAINT `ted_talk_id_fk_3` FOREIGN KEY (`ted_talk_id`) REFERENCES `ted_talk`(`id`),
    CONSTRAINT `rating_tag_id_fk_3` FOREIGN KEY (`rating_tag_id`) REFERENCES `rating_tag`(`id`)
);


