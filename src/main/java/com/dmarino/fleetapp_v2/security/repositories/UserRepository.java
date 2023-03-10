package com.dmarino.fleetapp_v2.security.repositories;

import com.dmarino.fleetapp_v2.security.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	
	User findByEmail(String email);
	
	User findByUsername(String username);

	User findByFirstnameAndLastname(String firstname, String lastname);
	
}
