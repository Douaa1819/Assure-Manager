package org.assuremanager.mapper;
import org.assuremanager.dto.request.UserRegisterRequest;
import org.assuremanager.dto.response.UserResponseDto;
import org.assuremanager.model.User;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface UserMapper {

    User toEntity(UserRegisterRequest dto);

    UserResponseDto toDto(User entity);

    List<User> toEntityList(List<UserRegisterRequest> dtoList);

    List<UserResponseDto> toDtoList(List<User> entityList);
}