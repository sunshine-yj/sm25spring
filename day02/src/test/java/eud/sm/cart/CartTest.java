package eud.sm.cart;

import eud.sm.dto.Cart;
import eud.sm.service.CartService;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
class CartTest {

    @Autowired
    CartService cartService;

    @Test
    void insert() {
        Cart cart = Cart.builder().custId("id01").productId(1000).productQt(5).build();
        try {
            cartService.register(cart);
            log.info("Insert End ------------------------------------------");
        } catch (Exception e) {
            log.info("Error Insert Test ...");
            e.printStackTrace();
        }
    }

}
