package com.dmarino.fleetapp_v2.parameters.repositories;

import com.dmarino.fleetapp_v2.parameters.models.State;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StateRepository extends JpaRepository<State, Integer> {

    public List<State> getAllByCountryid(Integer countryid);

}
