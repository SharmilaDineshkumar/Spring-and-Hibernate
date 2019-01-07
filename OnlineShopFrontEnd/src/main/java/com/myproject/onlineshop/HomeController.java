package com.myproject.onlineshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public ModelAndView indexPage() {
        ModelAndView m1 = new ModelAndView("index");
        return m1;
    }

    @RequestMapping(value = "/index")
    public ModelAndView HomePage() {
        ModelAndView m1 = new ModelAndView("index");
        return m1;
    }

    @RequestMapping(value = "/ProductDetails")
    public ModelAndView ProductPage() {
        ModelAndView m1 = new ModelAndView("ProductDetails");
        return m1;
    }

    @RequestMapping(value = "/LoginPage")
    public ModelAndView LoginPage() {
        ModelAndView m1 = new ModelAndView("LoginPage");
        return m1;
    }

    @RequestMapping(value = "/Registeration")
    public ModelAndView RegistrationPage() {
        ModelAndView m1 = new ModelAndView("Registeration");
        return m1;
    }

}
