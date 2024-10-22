package org.assuremanager.repository;

import org.assuremanager.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository  extends JpaRepository<User, Long> {


}
