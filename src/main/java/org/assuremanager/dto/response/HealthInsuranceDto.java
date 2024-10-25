package org.assuremanager.dto.response;

public class HealthInsuranceDto {
    private Long insuranceId;
    private Integer age;
    private String healthStatus;
    private Boolean coverageType;

    public Long getInsuranceId() {
        return insuranceId;
    }

    public void setInsuranceId(Long insuranceId) {
        this.insuranceId = insuranceId;
    }

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
