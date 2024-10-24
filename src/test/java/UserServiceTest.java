import org.assuremanager.dto.request.UserLoginRequest;
import org.assuremanager.dto.request.UserRegisterRequest;
import org.assuremanager.exception.EntityExistsException;
import org.assuremanager.exception.InvalidCredentialsException;
import org.assuremanager.model.User;
import org.assuremanager.repository.UserRepository;
import org.assuremanager.mapper.UserMapper;
import org.assuremanager.service.UserService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class UserServiceTest {

    @Mock
    private UserRepository userRepository;

    @Mock
    private UserMapper userMapper;

    @Mock
    private BCryptPasswordEncoder passwordEncoder;

    @InjectMocks
    private UserService userService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this); // Initialize mocks
    }

    @Nested
    @DisplayName("Register User Tests")
    class RegisterUserTests {

        @Test
        @DisplayName("Should register user successfully")
        void registerUser_Success() {
            // Arrange
            UserRegisterRequest request = new UserRegisterRequest();
            request.setEmail("test@example.com");
            request.setPassword("password");
            User user = new User();
            user.setEmail("test@example.com");

            when(userRepository.existsByEmail(request.getEmail())).thenReturn(false);
            lenient().when(userMapper.toEntity(request)).thenReturn(user);
            lenient().when(passwordEncoder.encode(request.getPassword())).thenReturn("$2a$10$Dg4QwXg8N.cGzPqJDkOxReXcmk2Ff1c3gNQfAfl2uMkI8GE.HF.Ve");

            when(userRepository.save(user)).thenReturn(user);

            // Act
            userService.registerUser(request);

            // Assert
            verify(userRepository).save(user);
        }


        @Test
        @DisplayName("Should throw exception when email exists")
        void registerUser_EmailExists() {
            // Arrange
            UserRegisterRequest request = new UserRegisterRequest();
            request.setEmail("existing@example.com");

            when(userRepository.existsByEmail(request.getEmail())).thenReturn(true);

            // Act & Assert
            assertThrows(EntityExistsException.class, () -> userService.registerUser(request));
        }
    }

    @Nested
    @DisplayName("Login User Tests")
    class LoginUserTests {

        @Test
        @DisplayName("Should throw InvalidCredentialsException when email is incorrect")
        void loginUser_InvalidEmail() {
            // Arrange
            UserLoginRequest request = new UserLoginRequest();
            request.setEmail("wrong@example.com");

            when(userRepository.findByEmail(request.getEmail())).thenReturn(null);

            // Act & Assert
            assertThrows(InvalidCredentialsException.class, () -> userService.loginUser(request));
        }

        @Test
        @DisplayName("Should fail login due to invalid password")
        void loginUser_InvalidPassword() {
            // Arrange
            UserLoginRequest request = new UserLoginRequest();
            request.setEmail("test@example.com");
            request.setPassword("wrongPassword");

            User user = new User();
            user.setEmail("test@example.com");
            user.setPassword("$2a$10$Dg4QwXg8N.cGzPqJDkOxReXcmk2Ff1c3gNQfAfl2uMkI8GE.HF.Ve");

            when(userRepository.findByEmail(request.getEmail())).thenReturn(user);
            lenient().when(passwordEncoder.matches(request.getPassword(), user.getPassword())).thenReturn(false);

            // Act & Assert
            assertThrows(InvalidCredentialsException.class, () -> userService.loginUser(request));
        }

    }
}