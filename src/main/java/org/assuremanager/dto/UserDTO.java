package org.assuremanager.dto;

public class UserDTO {
    private Long id;
    private String firstName;
    private String lastName;
    private String email;


    public UserDTO() {}

    public UserDTO(Long id, String firstName, String lastName, String email) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

}
