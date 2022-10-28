package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Resource;

public interface ResouceRepository extends JpaRepository<Resource, Long>{

}
