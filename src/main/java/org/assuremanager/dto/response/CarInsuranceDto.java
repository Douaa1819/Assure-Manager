package org.assuremanager.dto.response;

import org.assuremanager.enumeration.VehicleType;

public class CarInsuranceDto {
    private Long insuranceId;
    private Integer driverAge;
    private String vehicleBrand;
    private String vehicleModel;
    private String usage;
    private VehicleType vehicleType;
    private String drivingHistory;

    public Long getInsuranceId() {
        return insuranceId;
    }

    public void setInsuranceId(Long insuranceId) {
        this.insuranceId = insuranceId;
    }

    public Integer getDriverAge() {
        return driverAge;
    }

    public void setDriverAge(Integer driverAge) {
        this.driverAge = driverAge;
    }

    public String getVehicleBrand() {
        return vehicleBrand;
    }

    public void setVehicleBrand(String vehicleBrand) {
        this.vehicleBrand = vehicleBrand;
    }

    public String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
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

