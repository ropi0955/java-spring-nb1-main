package com.gamf.javaspringnb1main.Controllers;

import com.gamf.javaspringnb1main.Models.Club;
import com.gamf.javaspringnb1main.Repositories.ClubRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class ClubController {
    @Autowired
    private ClubRepository clubRepository;

    @GetMapping("/clubs")
    public String clubs(Model model) {
        model.addAttribute("clubs", clubRepository.findAll());
        return "clubs";
    }

    @GetMapping("/clubs/new")
    public String newClub(Model model) {
        model.addAttribute("club", new Club());
        return "new_club";
    }

    @PostMapping("/club/new")
    public String submitClub(@Valid @ModelAttribute Club club, BindingResult bindingResult, Model model) {
        if(bindingResult.hasErrors()){
            return "new_club";
        }
        clubRepository.save(club);
        return "redirect:/clubs";
    }

}
