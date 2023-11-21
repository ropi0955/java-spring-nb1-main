package com.gamf.javaspringnb1main.Repositories;

import com.gamf.javaspringnb1main.Models.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface UserRepository extends CrudRepository<User, Integer> {
    Optional<User> findByEmail(String email);

}
