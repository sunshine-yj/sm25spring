package eud.sm.controller;

import eud.sm.dto.HotItem;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
public class AjaximplController {
    @RequestMapping("/gettime")
    public Object getTime(){
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = sdf.format(date);
        return str;
    }

    @RequestMapping("/getdata")
    public Object getData(){
        List<HotItem> list = new ArrayList<>();
        list.add(HotItem.builder().cnt(1).title("날씨").updown("/img/up.jpg").build());
        list.add(HotItem.builder().cnt(2).title("여름").updown("/img/down.jpg").build());
        list.add(HotItem.builder().cnt(3).title("태풍").updown("/img/up.jpg").build());
        list.add(HotItem.builder().cnt(4).title("장마").updown("/img/down.jpg").build());
        list.add(HotItem.builder().cnt(5).title("러브버그").updown("/img/up.jpg").build());
        return list;
    }
}
