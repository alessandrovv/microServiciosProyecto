package com.dmarino.fleetapp_v2.accounts.models;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.dmarino.fleetapp_v2.parameters.models.CommonObject;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;

@Entity
@Data
@EqualsAndHashCode(callSuper=false)
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class InvoiceStatus extends CommonObject {

	public InvoiceStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	public InvoiceStatus(Integer id, String description, String details) {
		super(id, description, details);
		// TODO Auto-generated constructor stub
	}

	
}
