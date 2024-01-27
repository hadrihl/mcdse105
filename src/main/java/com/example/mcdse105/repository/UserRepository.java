package com.example.mcdse105.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.mcdse105.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

}
