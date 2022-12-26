package com.dmarino.fleetapp_v2.security.services;

import com.dmarino.fleetapp_v2.dto.UserRegistrationDto;
import com.dmarino.fleetapp_v2.security.models.Role;
import com.dmarino.fleetapp_v2.security.models.User;
import com.dmarino.fleetapp_v2.security.repositories.RoleRepository;
import com.dmarino.fleetapp_v2.security.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class UserServiceImpl implements IUserService {
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	public UserServiceImpl(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}

	@Override
	public User save(UserRegistrationDto registrationDto) {
		User user = new User(
				registrationDto.getFirstname(), 
				registrationDto.getLastname(),
				registrationDto.getEmail(),
				passwordEncoder.encode(registrationDto.getPassword()), 
				registrationDto.getUsername(),
				(List.of(roleRepository.findByName("ROLE_USER"))));

		return userRepository.save(user);
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByEmail(username);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		User user = userRepository.findByEmail(username);
		if (user == null) {
			throw new UsernameNotFoundException("Invalid username or password.");
		}
		System.out.println(user.toString());
		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
				mapRolesToAuthorities(user.getRoles()));
	}

	private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Role> roles) {
		return roles.stream().map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
	}
}
