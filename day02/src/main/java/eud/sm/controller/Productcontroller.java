package eud.sm.controller;

import eud.sm.dto.Product;
import eud.sm.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@Slf4j
@RequestMapping("/product")
@RequiredArgsConstructor
public class Productcontroller {

    final ProductService productService;

    String dir = "productitem/";

    @RequestMapping("")
    public String login(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }
    @RequestMapping("/get")
    public String get(Model model) throws Exception {
        List<Product> list = null;
        list = productService.get();
        model.addAttribute("plist",list);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"get");
        return "index";
    }
    @RequestMapping("/detail")
    public String detail(Model model, @RequestParam("id") int id) throws Exception {
        Product product = null;
        product = productService.get(id);
        model.addAttribute("p",product);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"detail");
        return "index";
    }
    @RequestMapping("/delete")
    public String delete(Model model,@RequestParam("id") int id) throws Exception {
        productService.remove(id);
        return "redirect:/productitem/get";
    }
    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"add");
        return "index";
    }
    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, Product product) throws Exception {
        productService.modify(product);
        return "redirect:/productitem/detail?id="+product.getProductId();
    }
    @RequestMapping("/addimpl")
    public String addimpl(Model model, Product product) throws Exception {
        log.info("Input Date {},{}",
                product.getProductName(),
                product.getProductImgFile().getOriginalFilename());
        productService.register(product);
        return "redirect:/productitem/get";
    }
}