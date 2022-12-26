package com.dmarino.fleetapp_v2.security.services;

import com.dmarino.fleetapp_v2.dto.UserRegistrationDto;
import com.dmarino.fleetapp_v2.security.models.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface IUserService extends UserDetailsService {
    User save(UserRegistrationDto registrationDto);
    User findByUsername(String username);

}