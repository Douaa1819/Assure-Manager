package org.assuremanager.repository;

import org.assuremanager.model.HealthInsurance;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HealthInsuranceRepository extends JpaRepository<HealthInsurance, Long> {
}
