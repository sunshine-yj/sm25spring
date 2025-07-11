package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping
@Slf4j
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
        model.addAttribute("left", dir+"leftjq3");
        model.addAttribute("center", dir+"jq3");

        return "index";
    }
    @RequestMapping("/join")
    public String join(Model model,
                       @RequestParam("id") String id,
                       @RequestParam("pwd") String pwd,
                       @RequestParam("email") String email,
                       @RequestParam("nickname") String nickname,
                       @RequestParam("ad_choose") String ad_choose,
                       @RequestParam("im_choose") String im_choose) {
        log.info("id:{}, pwd:{}, email:{}, nickname:{}, ad_num:{}, im_num:{}", id, pwd, email, nickname, ad_choose, im_choose);
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"jq2");

        return "index";
    }

}
