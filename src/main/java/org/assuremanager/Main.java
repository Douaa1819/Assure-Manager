package org.assuremanager;

import org.assuremanager.config.DataSourceConfig;
import org.assuremanager.config.JpaConfig;
import org.assuremanager.model.User;
import org.assuremanager.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(DataSourceConfig.class, JpaConfig.class);

        UserService userService = context.getBean(UserService.class);
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        // Example usage
        User user = new User();
        user.setName("John Doe");
        user.setEmail("john.doe@example.com");
        user.setPassword(passwordEncoder.encode("password")); // Hashing password
        user.setAddress("address");
        user.setPhoneNumber("121");

        try {
            userService.save(user);
            System.out.println("User saved successfully: " + user.getName());
        } catch (Exception e) {
            System.out.println("Error saving user: " + e.getMessage());
        }
    }
}
