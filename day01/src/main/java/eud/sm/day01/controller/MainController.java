package eud.sm.day01.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController {

    @RequestMapping("/")
    public String main(Model model) {
        log.info("start main ....");
        model.addAttribute("message", "Hello World");
        model.addAttribute("number", 11000);
        return "index";
    }

    @RequestMapping("/product")
    public String next(Model model) {
        log.info("start next ....");
        model.addAttribute("product");

        return "index";
    }

    @RequestMapping("/third")
    public String third(Model model) {
        log.info("start third ....");

        return "third";
    }
}
