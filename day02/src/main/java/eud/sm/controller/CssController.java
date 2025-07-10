package eud.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class CssController {

    String dir = "css/";

    @RequestMapping("/css")
    public String css(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");

        return "index";
    }

    @RequestMapping("/css/css1")
    public String css1(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"css1");

        return "index";
    }
    @RequestMapping("/css/css2")
    public String css2(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"css2");

        return "index";
    }
    @RequestMapping("/css/css3")
    public String css3(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"css3");

        return "index";
    }
}
