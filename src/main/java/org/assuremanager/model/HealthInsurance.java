package org.assuremanager.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "health_insurances")
public class HealthInsurance extends Insurance {
    @Min(value = 0, message = "Age cannot be negative")
    private Integer age;

    @NotBlank
    private String healthStatus;

    private Boolean coverageType;

    public HealthInsurance() {}

    public HealthInsurance(Integer age, String healthStatus, Boolean coverageType) {
        this.age = age;
        this.healthStatus = healthStatus;
        this.coverageType = coverageType;
    }


    public @Min(value = 0, message = "Age cannot be negative") Integer getAge() {
        return age;
    }

    public void setAge(@Min(value = 0, message = "Age cannot be negative") Integer age) {
        this.age = age;
    }

    public @NotBlank String getHealthStatus() {
        return healthStatus;
    }

    public void setHealthStatus(@NotBlank String healthStatus) {
        this.healthStatus = healthStatus;
    }

    public Boolean getCoverageType() {
        return coverageType;
    }

    public void setCoverageType(Boolean coverageType) {
        this.coverageType = coverageType;
    }
}