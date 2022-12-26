package com.dmarino.fleetapp_v2.accounts.repositories;

import com.dmarino.fleetapp_v2.accounts.models.TransactionType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TransactionTypeRepository extends JpaRepository<TransactionType, Integer> {
}
