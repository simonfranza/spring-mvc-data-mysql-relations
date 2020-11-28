package com.dovene.tripbook.controller;

import com.dovene.tripbook.model.User;
import com.dovene.tripbook.repository.UserJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value={"/", "login"})
public class LoginController {
    @Autowired
    UserJpaRepository userJpaRepository;

    @GetMapping
    public String login(Model model) {
        model.addAttribute("user", new User());
        return "user/login";
    }

    @PostMapping
    public String login(HttpSession session, @ModelAttribute User userParam) {
        User user = userJpaRepository.findOne(userParam.getLogin());
        boolean isUserAllowed = user != null && user.getPassword().equals(userParam.getPassword());
        if (isUserAllowed) {
            session.setAttribute("user", userParam);
            return "redirect:/dashboard";
        } else {
            return "redirect:/accessDenied";
        }
    }

    @GetMapping("/accessDenied")
    public String accessDenied(Model model) {
        return "user/accessDenied";
    }
}
