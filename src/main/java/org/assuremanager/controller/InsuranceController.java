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

    @PostMapping("/home")
    public ModelAndView createHomeInsurance(
            @RequestParam("property_type") String propertyType,
            @RequestParam("property_value") Double propertyValue,
            @RequestParam("location") String location,
            @RequestParam("high_risk_zone") String highRiskZone,
            @RequestParam("security-system") String securitySystem,
            RedirectAttributes redirectAttributes
    ) {
        ModelAndView modelAndView = new ModelAndView("services/home");

        try {
            boolean isRisqueZone;
            if ("yes".equalsIgnoreCase(highRiskZone)) {
                isRisqueZone = true;
            } else if ("no".equalsIgnoreCase(highRiskZone)) {
                isRisqueZone = false;
            } else {
                redirectAttributes.addFlashAttribute("error", "Invalid value for high-risk zone. Use 'yes' or 'no'.");
                return new ModelAndView("redirect:/insurances/home");
            }

            HomeInsuranceRequest request = new HomeInsuranceRequest();
            request.setPropertyType(PropertyType.valueOf(propertyType.toUpperCase()));
            request.setPropertyValue(propertyValue.floatValue());
            request.setLocation(location);
            request.setSecuritySystem(securitySystem);
            request.setRisqueZone(isRisqueZone);

            HomeInsuranceDto responseDTO = insuranceService.addHomeInsurance(request);

            redirectAttributes.addFlashAttribute("success", "Home insurance created successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "An error occurred while creating home insurance.");
            System.out.println("error: " + e.getMessage());
        }


        return new ModelAndView("redirect:/insurances/home");
    }



    @PostMapping("/car")
    public ResponseEntity<CarInsuranceDto> createCarInsurance(@RequestBody CarInsuranceRequest dto) {
        CarInsuranceDto responseDTO = insuranceService.addCarInsurance(dto);
        return ResponseEntity.ok(responseDTO);
    }
}
