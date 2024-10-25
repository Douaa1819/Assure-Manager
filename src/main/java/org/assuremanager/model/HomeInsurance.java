package org.assuremanager.model;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import org.assuremanager.enumeration.PropertyType;

@Entity
@Table(name = "home_insurances")
public class HomeInsurance extends Insurance {
    @NotNull
    private Float propertyValue;

    @NotBlank
    private String location;

    @NotBlank
    private String securitySystem;

    @Enumerated(EnumType.STRING)
    private PropertyType propertyType;

    private HomeInsurance() {

    }

    public HomeInsurance(Float propertyValue, String location, String securitySystem, PropertyType propertyType) {
        this.propertyValue = propertyValue;
        this.location = location;
        this.securitySystem = securitySystem;
        this.propertyType = propertyType;
    }

    public @NotBlank String getLocation() {
        return location;
    }

    public void setLocation(@NotBlank String location) {
        this.location = location;
    }

    public @NotNull Float getPropertyValue() {
        return propertyValue;
    }

    public void setPropertyValue(@NotNull Float propertyValue) {
        this.propertyValue = propertyValue;
    }

    public @NotBlank String getSecuritySystem() {
        return securitySystem;
    }

    public void setSecuritySystem(@NotBlank String securitySystem) {
        this.securitySystem = securitySystem;
    }

    public PropertyType getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(PropertyType propertyType) {
        this.propertyType = propertyType;
    }
}


