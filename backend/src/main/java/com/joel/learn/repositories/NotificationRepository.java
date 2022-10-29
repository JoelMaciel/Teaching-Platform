package com.joel.learn.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Notification;
import com.joel.learn.entities.User;

public interface NotificationRepository extends JpaRepository<Notification, Long>{
	
	Page<Notification> findByUser(User user, Pageable pageable);

}
