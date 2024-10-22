package org.assuremanager.service;

import org.assuremanager.model.User;
import org.assuremanager.repository.UserRepository;

public class UserService  {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User save(User user) {

       return userRepository.save(user);
    }
}
