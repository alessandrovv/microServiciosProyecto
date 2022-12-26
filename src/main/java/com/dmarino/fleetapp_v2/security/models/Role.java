package com.dmarino.fleetapp_v2.security.models;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.dmarino.fleetapp_v2.parameters.models.CommonObject;
import lombok.AllArgsConstructor;
import lombok.*;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Role extends Auditable<String> {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private Integer id;
    private String name;
    private String details;
	
    public Role() {
		super();
	}
    
	public Role(String name, String details) {
		super();
		this.name = name;
		this.details = details;
	}
	
	public Role(Integer id, String name, String details) {
		super();
		this.id = id;
		this.name = name;
		this.details = details;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
    
    
}
