package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{

}
