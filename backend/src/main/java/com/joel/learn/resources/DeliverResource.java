package com.joel.learn.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.joel.learn.dto.DeliverRevisionDTO;
import com.joel.learn.services.DeliverService;

@RestController
@RequestMapping(value = "/deliveries")
public class DeliverResource {
	
	
	@Autowired
	private DeliverService deliverService;
	
	@PreAuthorize("hasAnyRole('ADMIN','INSTRUCTOR')")
	@PutMapping(value = "/{id}")
	public ResponseEntity<Void> updateRevision(@PathVariable Long id, @RequestBody DeliverRevisionDTO deliverRevisionDTO){
		deliverService.saveRevision(id, deliverRevisionDTO);
		return ResponseEntity.noContent().build();
		
		
	}
	
	
	
	

}









