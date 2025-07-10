package eud.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class HtmlController {

    String dir = "html/";

    @RequestMapping("/html")
    public String html(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");

        return "index";
    }

    @RequestMapping("/html/html1")
    public String html1(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"html1");

        return "index";
    }
    @RequestMapping("/html/html2")
    public String html2(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"html2");

        return "index";
    }
    @RequestMapping("/html/html3")
    public String html3(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"html3");

        return "index";
    }
    @RequestMapping("/html/html4")
    public String html4(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"html4");

        return "index";
    }
    @RequestMapping("/html/html5")
    public String html5(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"html5");

        return "index";
    }
}
