package org.assuremanager.model;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import org.assuremanager.enumeration.VehicleType;

@Entity
@Table(name = "car_insurances")
public class CarInsurance extends Insurance {
    @Min(value = 18, message = "Driver must be at least 18 years old")
    private Integer driverAge;

    @NotBlank(message = "Vehicle model is required")
    private String vehicleModel;

    @NotBlank(message = "Vehicle brand is required")
    private String vehicleBrand;

    @NotBlank(message = "usage is required")
    private String usage;


    @Enumerated(EnumType.STRING)
    private VehicleType vehicleType;

    private String drivingHistory;


    public CarInsurance(Integer driverAge, String vehicleBrand, String vehicleModel, String usage,VehicleType vehicleType, String drivingHistory) {
        this.driverAge = driverAge;
        this.vehicleBrand = vehicleBrand;
        this.vehicleModel = vehicleModel;
        this.usage = usage;
        this.vehicleType = vehicleType;
        this.drivingHistory = drivingHistory;
    }
    public CarInsurance() {

    }

    public @Min(value = 18, message = "Driver must be at least 18 years old") Integer getDriverAge() {
        return driverAge;
    }

    public void setDriverAge(@Min(value = 18, message = "Driver must be at least 18 years old") Integer driverAge) {
        this.driverAge = driverAge;
    }

    public @NotBlank(message = "Vehicle model is required") String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(@NotBlank(message = "Vehicle model is required") String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public @NotBlank(message = "Vehicle brand is required") String getVehicleBrand() {
        return vehicleBrand;
    }

    public void setVehicleBrand(@NotBlank(message = "Vehicle brand is required") String vehicleBrand) {
        this.vehicleBrand = vehicleBrand;
    }

    public @NotBlank(message = "usage is required") String getUsage() {
        return usage;
    }

    public void setUsage(@NotBlank(message = "usage is required") String usage) {
        this.usage = usage;
    }

    public VehicleType getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(VehicleType vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getDrivingHistory() {
        return drivingHistory;
    }

    public void setDrivingHistory(String drivingHistory) {
        this.drivingHistory = drivingHistory;
    }
}
