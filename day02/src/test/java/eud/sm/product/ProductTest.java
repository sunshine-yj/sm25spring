package eud.sm.product;

import eud.sm.dto.Product;
import eud.sm.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
public class ProductTest {

    @Autowired
    ProductService productservice;

    @Test
    void getalltest() {
        List<Product> list = null;
        try {
            list = productservice.get();
            list.forEach(System.out::println);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void inserttest() {
        Product product = Product.builder()
                .productName("브이넥")
                .productPrice(10000)
                .productImg("pp.jpg")
                .discountRate(0.3)
                .cateId(10)
                .build();
        try {
            productservice.register(product);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void gettest() {
        Product product = null;
        try {
            productservice.get(1007);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void update() {
        Product product = Product.builder().productId(1007).productName("반바지2").productPrice(20000).productImg("pp.jpg").discountRate(0.3).cateId(10).build();
        try {
            productservice.modify(product);
            log.info("------------------------------------------");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Test
    void get2() {
        Product product = null;
        try {
            product = productservice.get(1002);
            log.info(product.toString());
            log.info("------------------------------------------");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Test
    void delete() {
        try {
            productservice.remove(1007);
            log.info("Delete End ------------------------------------------");
        } catch (Exception e) {
            log.info("Error Test ...");
            e.printStackTrace();
        }
    }

}
