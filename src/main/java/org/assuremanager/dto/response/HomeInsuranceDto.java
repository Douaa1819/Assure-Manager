package org.assuremanager.dto.response;

import org.assuremanager.enumeration.PropertyType;

public class HomeInsuranceDto {
    private Long insuranceId;
    private Float propertyValue;
    private String location;
    private String securitySystem;
    private PropertyType propertyType;
    private boolean risqueZone;



    public Float getPropertyValue() {
        return propertyValue;
    }

    public void setPropertyValue(Float propertyValue) {
        this.propertyValue = propertyValue;
    }

    public String getSecuritySystem() {
        return securitySystem;
    }

    public void setSecuritySystem(String securitySystem) {
        this.securitySystem = securitySystem;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public PropertyType getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(PropertyType propertyType) {
        this.propertyType = propertyType;
    }
    public Long getInsuranceId() {
        return insuranceId;
    }
    public void setInsuranceId(Long insuranceId) {
        this.insuranceId = insuranceId;
    }

    public boolean isRisqueZone() {
        return risqueZone;
    }
    public void setRisqueZone(boolean risqueZone) {
        this.risqueZone = risqueZone;
    }

}

