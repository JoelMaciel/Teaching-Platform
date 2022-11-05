package com.joel.learn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.joel.learn.dto.NotificationDTO;
import com.joel.learn.entities.Notification;
import com.joel.learn.repositories.NotificationRepository;

@Service
public class NotificationService {

	@Autowired
	private NotificationRepository notificationRepository;
	
	@Autowired
	private AuthService authService;
	
	@Transactional(readOnly = true)
	public Page<NotificationDTO> notificationForCurrentUser(boolean unreadOnly, Pageable pageable) {
		var user = authService.authenticated();
		Page<Notification> pages = notificationRepository.find(user, unreadOnly, pageable);
		return pages.map(page -> new NotificationDTO(page));
	}
	
}








