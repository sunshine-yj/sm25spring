package eud.sm.controller;

import eud.sm.dto.HotItem;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.*;

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
        Random random = new Random();

        Object c[] = {1,2,3,4,5};
        Collections.shuffle(Arrays.asList(c));

        list.add(HotItem.builder().cnt((Integer) c[0]).title("날씨").updown(random.nextInt(2)).build());
        list.add(HotItem.builder().cnt((Integer) c[1]).title("여름").updown(random.nextInt(2)).build());
        list.add(HotItem.builder().cnt((Integer) c[2]).title("태풍").updown(random.nextInt(2)).build());
        list.add(HotItem.builder().cnt((Integer) c[3]).title("장마").updown(random.nextInt(2)).build());
        list.add(HotItem.builder().cnt((Integer) c[4]).title("러브버그").updown(random.nextInt(2)).build());

        list.sort((a, b) -> a.getCnt() - b.getCnt());

        return list;
    }
}
