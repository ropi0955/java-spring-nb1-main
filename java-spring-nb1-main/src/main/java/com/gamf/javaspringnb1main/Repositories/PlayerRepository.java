package com.gamf.javaspringnb1main.Repositories;

import com.gamf.javaspringnb1main.Models.Player;
import org.springframework.data.repository.CrudRepository;

public interface PlayerRepository extends CrudRepository<Player, Integer> {
}
