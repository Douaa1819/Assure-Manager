package org.assuremanager.mapper;

import org.assuremanager.dto.request.CarInsuranceRequest;
import org.assuremanager.dto.request.HealthInsuranceRequest;
import org.assuremanager.dto.request.HomeInsuranceRequest;
import org.assuremanager.dto.response.CarInsuranceDto;
import org.assuremanager.dto.response.HealthInsuranceDto;
import org.assuremanager.dto.response.HomeInsuranceDto;
import org.assuremanager.model.CarInsurance;
import org.assuremanager.model.HealthInsurance;
import org.assuremanager.model.HomeInsurance;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface InsuranceMapper {

    // HealthInsurance Mappings
    HealthInsurance toEntity(HealthInsuranceRequest dto);
    HealthInsuranceDto toResponseDTO(HealthInsurance entity);


    // HomeInsurance Mappings
    HomeInsurance toEntity(HomeInsuranceRequest dto);
    HomeInsuranceDto toResponseDTO(HomeInsurance entity);


    // CarInsurance Mappings
    CarInsurance toEntity(CarInsuranceRequest dto);
    CarInsuranceDto toResponseDTO(CarInsurance entity);
}
