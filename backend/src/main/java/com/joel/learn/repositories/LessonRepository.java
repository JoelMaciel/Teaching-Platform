package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Lesson;

public interface LessonRepository extends JpaRepository<Lesson, Long>{

}
