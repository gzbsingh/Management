package com.employee.management.repositeroy;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.employee.management.utils.User;

public interface UserRepositeory extends JpaRepository<User, String> {
public Optional<User> findByusername(String username);
}
