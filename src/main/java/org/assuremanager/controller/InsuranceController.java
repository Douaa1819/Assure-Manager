package org.assuremanager.controller;

import org.assuremanager.dto.request.CarInsuranceRequest;
import org.assuremanager.dto.request.HealthInsuranceRequest;
import org.assuremanager.dto.request.HomeInsuranceRequest;
import org.assuremanager.dto.response.CarInsuranceDto;
import org.assuremanager.dto.response.HealthInsuranceDto;
import org.assuremanager.dto.response.HomeInsuranceDto;
import org.assuremanager.enumeration.PropertyType;
import org.assuremanager.service.InsuranceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@RestController
@RequestMapping("/insurances")
public class InsuranceController {

    @Autowired
    private InsuranceService insuranceService;

    @GetMapping("/home")
    public ModelAndView getHomeInsuranceForm() {
        ModelAndView modelAndView = new ModelAndView("services/homeInsurance");
        return modelAndView;
    }

    @GetMapping("/car")
    public ModelAndView getCarInsuranceForm() {
        ModelAndView modelAndView = new ModelAndView("services/carInsurance");
        return modelAndView;
    }

    @GetMapping("/health")
    public ModelAndView getLifeInsuranceForm() {
        ModelAndView modelAndView = new ModelAndView("services/healthInsurance");
        return modelAndView;
    }

    @PostMapping("/health")
    public ResponseEntity<HealthInsuranceDto> createHealthInsurance(@RequestBody HealthInsuranceRequest dto) {
        HealthInsuranceDto responseDTO = insuranceService.addHealthInsurance(dto);
        return ResponseEntity.ok(responseDTO);
    }


    @PostMapping("/car")
    public ResponseEntity<CarInsuranceDto> createCarInsurance(@RequestBody CarInsuranceRequest dto) {
        CarInsuranceDto responseDTO = insuranceService.addCarInsurance(dto);
        return ResponseEntity.ok(responseDTO);
    }

    @PostMapping("/home")
    public ModelAndView createHomeInsurance(
            @RequestParam("property_type") String propertyType,
            @RequestParam("property_value") Double propertyValue,
            @RequestParam("location") String location,
            @RequestParam("high_risk_zone") String highRiskZone,
            @RequestParam("security_system") String securitySystem,
            RedirectAttributes redirectAttributes
    ) {
        try {
            boolean isRisqueZone = "yes".equalsIgnoreCase(highRiskZone);

            // Create a HomeInsuranceRequest object
            HomeInsuranceRequest request = new HomeInsuranceRequest();
            request.setPropertyType(PropertyType.valueOf(propertyType.toUpperCase()));
            request.setPropertyValue(propertyValue.floatValue());
            request.setLocation(location);
            request.setSecuritySystem(securitySystem);
            request.setRisqueZone(isRisqueZone);

            // Save the home insurance
            HomeInsuranceDto responseDTO = insuranceService.addHomeInsurance(request);

            // Calculate the estimated
            double estimatedCost = insuranceService.calculateHomeInsuranceCost(request);
            redirectAttributes.addFlashAttribute("estimatedCost", estimatedCost);
            redirectAttributes.addFlashAttribute("success", "Home insurance created successfully!");

            return new ModelAndView("redirect:services/homeInsurance");
        } catch (IllegalArgumentException e) {
            redirectAttributes.addFlashAttribute("error", "Invalid property type provided.");
            return new ModelAndView("redirect:services/homeInsurance");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "An error occurred while creating home insurance.");
            System.out.println("Error: " + e.getMessage());
            return new ModelAndView("redirect:services/homeInsurance");
        }
    }

    @GetMapping("/homeInsuranceEstimation")
    public ModelAndView showHomeInsuranceEstimation(RedirectAttributes redirectAttributes) {
        ModelAndView modelAndView = new ModelAndView("services/homeInsuranceEstimation");
        Double estimatedCost = (Double) redirectAttributes.getFlashAttributes().get("estimatedCost");
        modelAndView.addObject("estimatedCost", estimatedCost);
        return modelAndView;
    }
}





