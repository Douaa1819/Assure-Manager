package org.assuremanager.dto.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

public class UserRegisterRequest {

    @NotBlank(message = "Name cannot be blank")
    private String name;

    @NotBlank(message = "Email cannot be blank")
    @Email(message = "Email should be valid")
    private String email;

    @NotBlank(message = "Password cannot be blank")
//    @Size(min = 8, max = 20, message = "Password must contain between 8 and 20 characters")
//    @Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=!]).+$",
//            message = "Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character")
    private String password;

    @NotBlank(message = "Address cannot be blank")
    private String address;

//    @Pattern(regexp = "^(\\+212\\s?|0)(6|7)[0-9]{8}|((0(2|5)[0-9]{7}))$",
//            message = "Phone must be a valid Moroccan format (e.g., 0601234567 or +212 6 0123 4567)")
    private String phoneNumber;

    public @NotBlank(message = "Name cannot be blank") String getName() {
        return name;
    }

    public void setName(@NotBlank(message = "Name cannot be blank") String name) {
        this.name = name;
    }

    public @NotBlank(message = "Password cannot be blank") @Size(min = 8, max = 20, message = "Password must contain between 8 and 20 characters")
    String getPassword() {
        return password;
    }

    public void setPassword(@NotBlank(message = "Password cannot be blank")
       String password) {
        this.password = password;
    }

    public @NotBlank(message = "Address cannot be blank") String getAddress() {
        return address;
    }

    public void setAddress(@NotBlank(message = "Address cannot be blank") String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public @NotBlank(message = "Email cannot be blank") @Email(message = "Email should be valid") String getEmail() {
        return email;
    }

    public void setEmail(@NotBlank(message = "Email cannot be blank") @Email(message = "Email should be valid") String email) {
        this.email = email;
    }
}
