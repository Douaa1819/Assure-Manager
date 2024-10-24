package org.assuremanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/services")
public class InsuranceServiceController {


    @GetMapping("/home")
    public ModelAndView getHomeInsuranceForm() {
        ModelAndView modelAndView = new ModelAndView("services/homeInsurance");
//        modelAndView.addObject("insuranceRequest", new InsuranceRequest());
        return modelAndView;
    }

    @GetMapping("/car")
    public ModelAndView getCarInsuranceForm() {
        ModelAndView modelAndView = new ModelAndView("services/carInsurance");
//        modelAndView.addObject("insuranceRequest", new InsuranceRequest());
        return modelAndView;
    }

    @GetMapping("/health")
    public ModelAndView getLifeInsuranceForm() {
        ModelAndView modelAndView = new ModelAndView("services/healthInsurance");
//        modelAndView.addObject("insuranceRequest", new InsuranceRequest());
        return modelAndView;
    }




















//    @PostMapping("/submit-home-insurance")
//    public String submitHomeInsurance(
//            @RequestParam("property_address") String propertyAddress,
//            @RequestParam("property_value") double propertyValue,
//            @RequestParam("coverage_amount") double coverageAmount) {
//        System.out.println("Home Insurance submitted: " + propertyAddress + ", " + propertyValue + ", " + coverageAmount);
//        return "redirect:/services/success";
//    }
//
//    @PostMapping("/submit-car-insurance")
//    public String submitCarInsurance(
//            @RequestParam("car_make") String carMake,
//            @RequestParam("car_model") String carModel,
//            @RequestParam("car_year") int carYear) {
//
//        System.out.println("Car Insurance submitted: " + carMake + ", " + carModel + ", " + carYear);
//        return "redirect:/services/success";
//    }
//
//    @PostMapping("/submit-life-insurance")
//    public String submitLifeInsurance(
//            @RequestParam("age") int age,
//            @RequestParam("health_status") String healthStatus) {
//
//        System.out.println("Life Insurance submitted: Age " + age + ", Health Status: " + healthStatus);
//        return "redirect:/services/success";
//    }
//
//    @RequestMapping("/success")
//    public String showSuccessPage() {
//        return "success";
//    }
}
