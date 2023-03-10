package com.dmarino.fleetapp_v2.security.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {

    @RequestMapping("/login")
    public String loginPage() {
        return "security/login";
    }

    @GetMapping("/register")
    public String register() {
        return "security/register";
    }

    @RequestMapping("/index")
    public String homePage() {
        return "index";
    }

    @RequestMapping("/blank")
    public String blank() {
        return "blank";
    }
    
    @RequestMapping("/accessDenied")
    public String accessDenied() {
        return "accessDenied";
    }

}
