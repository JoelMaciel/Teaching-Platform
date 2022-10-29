package com.joel.learn.dto;

import java.io.Serializable;

import com.joel.learn.entities.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	private String email;
	
	public UserDTO(User user) {
		id = user.getId();
		name = user.getName();
		email = user.getEmail();
	}

}







