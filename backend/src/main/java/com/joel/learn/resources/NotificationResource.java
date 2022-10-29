package com.joel.learn.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.joel.learn.dto.NotificationDTO;
import com.joel.learn.services.NotificationService;

@RestController
@RequestMapping(value = "/notifications")
public class NotificationResource {
	
	@Autowired
	private NotificationService notificationService;
	
	@GetMapping
	public ResponseEntity<Page<NotificationDTO>> notificationForCurrentUser(Pageable pageable) {
		Page<NotificationDTO> pages = notificationService.notificationForCurrentUser(pageable);
		return ResponseEntity.status(HttpStatus.OK).body(pages);
	}

}
