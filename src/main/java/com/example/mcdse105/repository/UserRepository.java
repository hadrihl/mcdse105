package com.example.mcdse105.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.mcdse105.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	@Query("Select case when count(u)> 0 then true else false end from User u where lower(u.email) like lower(:email)")
	public boolean existsByEmail(String email);
	
	@Query("SELECT u FROM User u WHERE u.email = ?1")
	public User findByEmail(String email);
}
