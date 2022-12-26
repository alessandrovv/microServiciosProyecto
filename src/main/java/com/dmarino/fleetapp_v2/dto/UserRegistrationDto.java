package com.dmarino.fleetapp_v2.dto;

import java.util.HashSet;
import java.util.Set;

import com.dmarino.fleetapp_v2.security.models.Role;

import lombok.Getter;
import lombok.Setter;

public class UserRegistrationDto {

	//@NotEmpty(message = "First name can't be empty!")
	@Getter@Setter
	private String firstname;

	//@NotEmpty(message = "Last name can't be empty!")
	@Getter@Setter
	private String lastname;

	//@NotEmpty(message = "Email name can't be empty!")
	//@Email(message = "*Please provide a valid Email")
	@Getter@Setter
	private String username;
	@Getter@Setter
	private String email;
	//@Length(min = 5, message = "*Your password must have at least 5 characters")
	//@NotEmpty(message = "*Please provide your password")
	@Getter@Setter
	private String password;

	Set<Role> roles = new HashSet<>();
	
	public UserRegistrationDto(){
	}
	
	public UserRegistrationDto(String firstname, String lastname, String username, String email, String password) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.email = email;
		this.password = password;
	}
	
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

}
