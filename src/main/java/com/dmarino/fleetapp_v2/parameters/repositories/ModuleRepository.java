package com.dmarino.fleetapp_v2.parameters.repositories;

import com.dmarino.fleetapp_v2.parameters.models.Module;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ModuleRepository extends JpaRepository<Module, Integer> {
}
