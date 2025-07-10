package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

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

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("left", "aboutleft");
        model.addAttribute("center", "about");
        return "index";
    }

    @RequestMapping("/registertestimpl")
    // ?id=aaaaa&pwd=xxxxx
    public String registertestimpl(Model model,
                                   @RequestParam("choose") List<String> chooses,
                                   @RequestParam("hobby") List<String> hobbys,
                                   @RequestParam("gender") String gender,
                                   @RequestParam("car") String car,
                                   @RequestParam("range") int range,
                                   @RequestParam("date") String date) {
        log.info("Choose:{}, Hobby:{}, Gender:{}, Car:{}, Range:{}, Date:{}",chooses, hobbys, gender, car, range, date);
        model.addAttribute("left", "aboutleft");
        model.addAttribute("center", "about");
        return "index";
    }

}
