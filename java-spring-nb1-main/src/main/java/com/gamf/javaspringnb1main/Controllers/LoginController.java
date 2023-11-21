package com.gamf.javaspringnb1main.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    //Bejelentkezés oldal
    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
