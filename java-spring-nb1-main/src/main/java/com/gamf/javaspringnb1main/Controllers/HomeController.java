package com.gamf.javaspringnb1main.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
//kezdőoldal gomb
    @GetMapping("/")
    public String index() {
        return "index";
    }

}
