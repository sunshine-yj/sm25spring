package eud.sm.cust;

import eud.sm.dto.Cust;
import eud.sm.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
public class CustTest {

    @Autowired
    CustService custservice;

    @Test
    void contextLoads() {
        List<Cust> list = null;
        try {
            list = custservice.get();
            list.forEach(System.out::println);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

}
