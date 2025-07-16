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
    void getalltest() {
        List<Cust> list = null;
        try {
            list = custservice.get();
            list.forEach(System.out::println);
            log.info("----------------------------------------------");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void gettest() {
        Cust cust = null;
        try {
            cust = custservice.get("id01");
            log.info(cust.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void inserttest() {
        Cust cust = Cust.builder()
                .custId("id65")
                .custName("홍인철")
                .custPwd("pwd64")
                .build();
        try {
            custservice.register(cust);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void updatetest() {
        Cust cust = Cust.builder()
                .custId("id65")
                .custName("이태준")
                .custPwd("55555")
                .build();
        try {
            custservice.modify(cust);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void deletetest() {
        try {
            custservice.remove("id77");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
