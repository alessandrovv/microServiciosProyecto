package com.dmarino.fleetapp_v2.parameters.models;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;

@Entity
@Data
@EqualsAndHashCode(callSuper=false)
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class Module extends CommonObject {

	public Module() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Module(Integer id, String description, String details) {
		super(id, description, details);
		// TODO Auto-generated constructor stub
	}

	
}
