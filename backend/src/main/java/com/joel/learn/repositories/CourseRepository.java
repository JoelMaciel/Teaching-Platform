package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Course;

public interface CourseRepository extends JpaRepository<Course, Long>{

}
