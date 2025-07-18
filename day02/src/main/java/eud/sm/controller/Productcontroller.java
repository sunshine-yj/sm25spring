package eud.sm.controller;

import eud.sm.dto.Product;
import eud.sm.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Slf4j
@RequestMapping("/product")
@RequiredArgsConstructor
public class Productcontroller {

    final ProductService productService;

    String dir = "product/";
    @RequestMapping("")
    public String product(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");
        return "index";
    }
    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"add");
        return "index";
    }
    @RequestMapping("/registerimpl")
    public String registerimpl(Model model, Product product) throws Exception {
        productService.register(product);
        return "redirect:/product/get";
    }
    @RequestMapping("/get")
    public String get(Model model) throws Exception {
        List<Product> list = null;

        list = productService.get();
        model.addAttribute("plist", list);
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"get");
        return "index";
    }

}
