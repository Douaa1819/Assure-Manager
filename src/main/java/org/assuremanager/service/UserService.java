    package org.assuremanager.service;

    import org.assuremanager.dto.request.UserLoginRequest;
    import org.assuremanager.dto.request.UserRegisterRequest;
    import org.assuremanager.dto.response.UserResponseDto;
    import org.assuremanager.exception.EntityExistsException;
    import org.assuremanager.exception.InvalidCredentialsException;
    import org.assuremanager.mapper.UserMapper;
    import org.assuremanager.model.User;
    import org.assuremanager.repository.UserRepository;
    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
    import org.springframework.stereotype.Service;

    import java.util.List;

    @Service
    public class UserService  {

        @Autowired
        private UserRepository userRepository;



        @Autowired
        private UserMapper userMapper;

        private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        public UserResponseDto registerUser(UserRegisterRequest request) {
            if (userRepository.existsByEmail(request.getEmail())) {
                throw new EntityExistsException("User already exists with this email");
            }

            User user = userMapper.toEntity(request);
            user.setPassword(passwordEncoder.encode(request.getPassword()));


            user = userRepository.save(user);

            return userMapper.toDto(user);
        }

        public boolean loginUser(UserLoginRequest request) {
            User user = userRepository.findByEmail(request.getEmail());
            if (user == null) {
                throw new InvalidCredentialsException("Invalid email or password");
            }

            if (passwordEncoder.matches(request.getPassword(), user.getPassword())) {
                return true;
            } else {
                throw new InvalidCredentialsException("Invalid email or password");
            }
        }

    }
