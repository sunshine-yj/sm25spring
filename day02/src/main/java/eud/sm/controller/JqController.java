package eud.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class JqController {

    String dir = "jq/";

    @RequestMapping("/jq")
    public String jq(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");

        return "index";
    }

    @RequestMapping("/jq/jq1")
    public String jq1(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"jq1");

        return "index";
    }
    @RequestMapping("/jq/jq2")
    public String jq2(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"jq2");

        return "index";
    }
    @RequestMapping("/jq/jq3")
    public String jq3(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"jq3");

        return "index";
    }
}
