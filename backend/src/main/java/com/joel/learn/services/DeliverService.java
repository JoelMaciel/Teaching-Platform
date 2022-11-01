package com.joel.learn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.joel.learn.dto.DeliverRevisionDTO;
import com.joel.learn.repositories.DeliverRepository;

@Service
public class DeliverService {
	
	@Autowired
	private DeliverRepository deliverRepository;
	
	@Transactional
	public void saveRevision(Long id, DeliverRevisionDTO deliverRevisionDTO) {
		var deliver = deliverRepository.getOne(id);
		deliver.setStatus(deliverRevisionDTO.getStatus());
		deliver.setFeedback(deliverRevisionDTO.getFeedback());
		deliver.setCorrectCount(deliverRevisionDTO.getCorrectCount());
		deliverRepository.save(deliver);
		
	}

}










