package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController {

    @RequestMapping("/")
    public String main(Model model) {
        log.info("start main1 ....");

        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model) {
        model.addAttribute("left", "aboutleft");
        model.addAttribute("center", "about");

        return "index";
    }

}
