package org.assuremanager.service;

import org.assuremanager.dto.request.CarInsuranceRequest;
import org.assuremanager.dto.request.HealthInsuranceRequest;
import org.assuremanager.dto.request.HomeInsuranceRequest;
import org.assuremanager.dto.response.CarInsuranceDto;
import org.assuremanager.dto.response.HealthInsuranceDto;
import org.assuremanager.dto.response.HomeInsuranceDto;
import org.assuremanager.enumeration.PropertyType;
import org.assuremanager.mapper.InsuranceMapper;
import org.assuremanager.model.CarInsurance;
import org.assuremanager.model.HealthInsurance;
import org.assuremanager.model.HomeInsurance;
import org.assuremanager.repository.CarInsuranceRepository;
import org.assuremanager.repository.HealthInsuranceRepository;
import org.assuremanager.repository.HomeInsuranceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InsuranceService {

    @Autowired
    private HealthInsuranceRepository healthInsuranceRepository;
    @Autowired
    private HomeInsuranceRepository homeInsuranceRepository;
    @Autowired
    private CarInsuranceRepository carInsuranceRepository;
    @Autowired
    private InsuranceMapper mapper;


    public HealthInsuranceDto addHealthInsurance(HealthInsuranceRequest dto) {
        HealthInsurance healthInsurance = mapper.toEntity(dto);
        HealthInsurance saved = healthInsuranceRepository.save(healthInsurance);
        return mapper.toResponseDTO(saved);
    }



    public HomeInsuranceDto addHomeInsurance(HomeInsuranceRequest dto) {
        HomeInsurance homeInsurance = mapper.toEntity(dto);
        HomeInsurance saved = homeInsuranceRepository.save(homeInsurance);
        return mapper.toResponseDTO(saved);
    }


    public CarInsuranceDto addCarInsurance(CarInsuranceRequest dto) {
        CarInsurance carInsurance = mapper.toEntity(dto);
        CarInsurance saved = carInsuranceRepository.save(carInsurance);
        return mapper.toResponseDTO(saved);
    }

    public double calculateHomeInsuranceCost(HomeInsuranceRequest dto) {
        double basePrice = 300.0;

        // +2 % si propoperty type est une maison
        if (dto.getPropertyType() == PropertyType.HOME) {
            basePrice += basePrice * 0.02;
        }

        // +5 % si le logement est situé dans une zone à risque
        if (dto.isRisqueZone()) {
            basePrice += basePrice * 0.05;
        }

        // +10 % si la valeur du bien dépasse 200 000 MAD
        if (dto.getPropertyValue() > 200000) {
            basePrice += basePrice * 0.10;
        }

        // -15 % si l'assuré dispose d'un système de sécurité, +15 % sinon
        if ("yes".equalsIgnoreCase(dto.getSecuritySystem())) {
            basePrice -= basePrice * 0.15;
        } else {
            basePrice += basePrice * 0.15;
        }

        return basePrice;
    }
}



