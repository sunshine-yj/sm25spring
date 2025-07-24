package eud.sm.cart;

import eud.sm.dto.Cart;
import eud.sm.service.CartService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
class CartSelectTest {

    @Autowired
    CartService  cartService;


    @Test
    void selectByCustId() throws Exception {
        List<Cart> carts = null;
        String custId = "id02";
        try {
            carts = cartService.findByCustId(custId);
            carts.forEach(c -> { log.info("custId:{}",c.toString()); });
            log.info("Insert End ------------------------------------------");
        } catch (Exception e) {
            log.info("Error Insert Test ...");
            e.printStackTrace();
        }
    }


}