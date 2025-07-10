package eud.sm.control;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class controller {
    @RequestMapping("/")
    public String main(Model model) {
        log.info("start main ....");

        return "index";
    }
}
