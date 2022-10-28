package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Reply;

public interface ReplyRepository extends JpaRepository<Reply, Long>{

}
