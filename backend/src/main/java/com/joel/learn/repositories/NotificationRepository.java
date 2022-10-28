package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Notification;

public interface NotificationRepository extends JpaRepository<Notification, Long>{

}
