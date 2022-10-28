package com.joel.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.joel.learn.entities.Offer;

public interface OfferRepository extends JpaRepository<Offer, Long>{

}
