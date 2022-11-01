package com.joel.learn.dto;

import java.io.Serializable;

import com.joel.learn.entities.enums.DeliverStatus;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class DeliverRevisionDTO implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private DeliverStatus status;
	private String feedback;
	private Integer correctCount;

}





