package com.dmarino.fleetapp_v2;

import groovy.lang.Lazy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.dmarino.fleetapp_v2.dto.UserRegistrationDto;

import com.dmarino.fleetapp_v2.security.models.Role;
import com.dmarino.fleetapp_v2.security.models.User;
import com.dmarino.fleetapp_v2.security.repositories.RoleRepository;
import com.dmarino.fleetapp_v2.security.repositories.UserRepository;
import com.dmarino.fleetapp_v2.security.services.IUserService;

import javax.transaction.Transactional;
import java.util.Collections;

public class SetupData {
    boolean alreadySetup = false;
    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private IUserService userService;



    //@Override
    @Transactional
    public void onApplicationEvent(ContextRefreshedEvent event) {
        if (alreadySetup)
            return;
        createRoleIfNotFound("ROLE_USER");
        createRoleIfNotFound("ROLE_ADMIN");
        createUserIfNotFound(new UserRegistrationDto("admin","admin","admin","admin@admin.com","123456"));
    }
    @Transactional
    Role createRoleIfNotFound(String name) {
        Role role = roleRepository.findByName(name);
        if (role == null) {
            role = new Role(name, name);
            roleRepository.save(role);
        }
        return role;
    }
    @Transactional
    User createUserIfNotFound(UserRegistrationDto registrationDto) {
        User user = userRepository.findByEmail(registrationDto.getUsername());
        if (user == null) {
            user = userService.save(registrationDto);
        }
        return user;
    }
}
