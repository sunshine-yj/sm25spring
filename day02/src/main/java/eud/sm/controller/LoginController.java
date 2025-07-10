package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
public class LoginController {
    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center", "login");

        return "index";
    }


    @RequestMapping("/loginimpl")
    public String loginimpl(Model model,
                            @RequestParam("id") String id,
                            @RequestParam("pwd")  String pwd) {

        model.addAttribute("center", "login");
        log.info("id:{} PWD:{} ", id, pwd);
        return "index";
    }
}
