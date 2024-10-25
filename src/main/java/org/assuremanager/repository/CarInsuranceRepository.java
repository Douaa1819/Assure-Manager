package org.assuremanager.repository;

import org.assuremanager.model.CarInsurance;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CarInsuranceRepository extends JpaRepository<CarInsurance, Long> {}
