package org.assuremanager.dto.request;

public class HealthInsuranceRequest {
    private Integer age;
    private String healthStatus;
    private Boolean coverageType;


    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getHealthStatus() {
        return healthStatus;
    }

    public void setHealthStatus(String healthStatus) {
        this.healthStatus = healthStatus;
    }

    public Boolean getCoverageType() {
        return coverageType;
    }

    public void setCoverageType(Boolean coverageType) {
        this.coverageType = coverageType;
    }
}
