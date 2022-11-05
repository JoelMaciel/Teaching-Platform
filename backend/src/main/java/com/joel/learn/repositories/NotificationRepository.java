package com.joel.learn.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.joel.learn.entities.Notification;
import com.joel.learn.entities.User;

public interface NotificationRepository extends JpaRepository<Notification, Long>{
	
	@Query("select n from Notification n where "
			+ "(n.user = :user) and "
			+ "(:unreadOnly = false or n.read = false) "
			+ "order by n.moment desc")
	Page<Notification> find(User user, boolean unreadOnly, Pageable pageable);

}
