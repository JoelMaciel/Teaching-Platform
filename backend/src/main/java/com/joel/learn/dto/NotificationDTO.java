package com.joel.learn.dto;

import java.io.Serializable;
import java.time.Instant;

import com.joel.learn.entities.Notification;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NotificationDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String text;
	private Instant moment;
	private boolean read;
	private String route;
	private Long userId;
	
	public NotificationDTO(Notification notification) {
		id = notification.getId();
		text = notification.getText();
		moment = notification.getMoment();
		read = notification.isRead();
		route = notification.getRoute();
		userId = notification.getUser().getId();
		
	}

}







