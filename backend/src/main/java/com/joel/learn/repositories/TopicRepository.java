package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Topic;

public interface TopicRepository extends JpaRepository<Topic, Long>{

}
