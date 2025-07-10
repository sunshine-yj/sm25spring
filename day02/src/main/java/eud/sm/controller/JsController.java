package eud.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class JsController {

    String dir = "js/";

    @RequestMapping("/js")
    public String js(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");

        return "index";
    }

    @RequestMapping("/js/js1")
    public String js1(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"js1");

        return "index";
    }
    @RequestMapping("/js/js2")
    public String js2(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"js2");

        return "index";
    }
    @RequestMapping("/js/js3")
    public String js3(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"js3");

        return "index";
    }
}
