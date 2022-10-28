package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Section;

public interface SectionRepository extends JpaRepository<Section, Long>{

}
