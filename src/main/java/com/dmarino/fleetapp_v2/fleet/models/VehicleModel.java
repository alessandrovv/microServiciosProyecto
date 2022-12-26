package com.dmarino.fleetapp_v2.fleet.models;

import com.dmarino.fleetapp_v2.parameters.models.CommonObject;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;

@Entity
@Data
@EqualsAndHashCode(callSuper=false)
public class VehicleModel extends CommonObject {

	public VehicleModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VehicleModel(Integer id, String description, String details) {
		super(id, description, details);
		// TODO Auto-generated constructor stub
	}

}
