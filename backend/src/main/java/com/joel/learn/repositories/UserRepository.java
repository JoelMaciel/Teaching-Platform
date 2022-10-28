package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
