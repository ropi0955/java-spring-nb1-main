package com.gamf.javaspringnb1main.Controllers;

import com.gamf.javaspringnb1main.Models.Post;
import com.gamf.javaspringnb1main.Exceptions.ClubNotFoundException;
import com.gamf.javaspringnb1main.Exceptions.PlayerNotFoundException;
import com.gamf.javaspringnb1main.Exceptions.PostNotFoundException;
import com.gamf.javaspringnb1main.Models.Club;
import com.gamf.javaspringnb1main.Models.Player;
import com.gamf.javaspringnb1main.Repositories.ClubRepository;
import com.gamf.javaspringnb1main.Repositories.PlayerRepository;
import com.gamf.javaspringnb1main.Repositories.PostRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    private final PlayerRepository playerRepository;
    private final ClubRepository clubRepository;
    private final PostRepository postRepository;

    ApiController(PlayerRepository playerRepository, ClubRepository clubRepository, PostRepository postRepository){
       this.playerRepository = playerRepository;
       this.clubRepository = clubRepository;
       this.postRepository = postRepository;
    }

    @GetMapping("/api/clubs")
    public Iterable<Club> clubs(){
        return clubRepository.findAll();
    }

    @GetMapping("/api/clubs/{id}")
    public Club club(@PathVariable int id){
        return clubRepository.findById(id).orElseThrow(() -> new ClubNotFoundException(id));
    }

    @GetMapping("/api/players")
    public Iterable<Player> players(){
        return playerRepository.findAll();
    }

    @GetMapping("/api/players/{id}")
    public Player player(@PathVariable int id){
        return playerRepository.findById(id).orElseThrow(() -> new PlayerNotFoundException(id));
    }

    @GetMapping("/api/posts")
    public Iterable<Post> posts(){
        return postRepository.findAll();
    }

    @GetMapping("/api/posts/{id}")
    public Post post(@PathVariable int id){
        return postRepository.findById(id).orElseThrow(() -> new PostNotFoundException(id));
    }
}
