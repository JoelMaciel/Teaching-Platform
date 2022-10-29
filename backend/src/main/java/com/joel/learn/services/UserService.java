package com.joel.learn.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.joel.learn.dto.UserDTO;
import com.joel.learn.entities.User;
import com.joel.learn.repositories.UserRepository;
import com.joel.learn.services.exceptions.ResourceNotFoundException;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class UserService implements UserDetailsService{
	
	@Autowired
	private UserRepository userRepository;
	
	public UserDTO findById(Long id) {
		Optional<User> userOptional = userRepository.findById(id);
		var user = userOptional.orElseThrow(()-> new ResourceNotFoundException("Entity not found!"));
		return new UserDTO(user);
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		var user = userRepository.findByEmail(username);
		if (user == null) {
			log.error("User not found {} : " , username);
			throw new UsernameNotFoundException("Email not found {} : " + username);
		}

		log.info("User found {} : " + username);
		return user;
	}

}
