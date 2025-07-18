package eud.sm.controller;

import eud.sm.dto.Cust;
import eud.sm.service.CustService;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@Slf4j
public class MainController {

    private final CustService custService;

    public MainController(CustService custService) {
        this.custService = custService;
    }

    @RequestMapping("/")
    public String main(Model model) {
        log.info("start main1 ....");

        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("left", "left");
        model.addAttribute("center", "register");
        return "index";
    }

    @RequestMapping("/mainregisterimpl")
    public String mainregisterimpl(Model model, Cust cust,  HttpSession session) throws Exception {
        log.info("{},{},{}", cust.getCustPwd(), cust.getCustName(), cust.getCustId());
        try {
            custService.register(cust);
            session.setAttribute("logincust", cust);
        }
        catch (Exception e) {
            return "redirect:/register";
        }

        return "redirect:/";
    }

    @RequestMapping("/about")
    public String about(Model model) {
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

    @RequestMapping("/wf")
    public String wf(Model model) {
        model.addAttribute("center", "wf");

        return "index";
    }

    @RequestMapping("/wt")
    public String wt(Model model) {
        String cleanedDateTime = "2025-07-15T14:30";

        SimpleDateFormat isoFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        Date parsedDateTime = null;
        try {
            parsedDateTime = isoFormat.parse(cleanedDateTime);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        model.addAttribute("center", "wt");
        model.addAttribute("parsedDateTime", parsedDateTime);
        return "index";
    }

}
