package com.dmarino.fleetapp_v2.fleet.repositories;

import com.dmarino.fleetapp_v2.fleet.models.VehicleMovement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VehicleMovementRepository extends JpaRepository<VehicleMovement, Integer> {

}
