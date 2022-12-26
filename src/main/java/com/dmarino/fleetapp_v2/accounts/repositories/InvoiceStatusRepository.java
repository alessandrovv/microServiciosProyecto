package com.dmarino.fleetapp_v2.accounts.repositories;

import com.dmarino.fleetapp_v2.accounts.models.InvoiceStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface InvoiceStatusRepository extends JpaRepository<InvoiceStatus, Integer> {

}
