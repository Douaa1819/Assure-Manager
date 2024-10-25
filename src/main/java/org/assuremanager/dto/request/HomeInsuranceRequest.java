package org.assuremanager.dto.request;

import org.assuremanager.enumeration.PropertyType;

public class HomeInsuranceRequest {
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

    public boolean isRisqueZone() {
        return risqueZone;
    }
    public void setRisqueZone(boolean risqueZone) {
        this.risqueZone = risqueZone;
    }
}
