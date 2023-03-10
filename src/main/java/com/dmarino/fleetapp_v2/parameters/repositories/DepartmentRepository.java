package com.dmarino.fleetapp_v2.parameters.repositories;

import com.dmarino.fleetapp_v2.parameters.models.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Integer> {
}
