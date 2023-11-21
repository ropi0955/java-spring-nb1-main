package com.gamf.javaspringnb1main.Repositories;

import com.gamf.javaspringnb1main.Models.Post;
import org.springframework.data.repository.CrudRepository;

public interface PostRepository extends CrudRepository<Post, Integer> {
}
