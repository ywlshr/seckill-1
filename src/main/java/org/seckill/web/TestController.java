package org.seckill.web;

import com.sun.org.apache.bcel.internal.generic.NEW;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/m")
public class TestController {
    private Log log = LogFactory.getLog(this.getClass());

    @RequestMapping(value = "/firstmeum", method = RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public Map exposer() {
        Map map = new HashMap();
        List<String> list1 = new ArrayList<String>();
        list1.add("meun11");
        list1.add("meun12");
        list1.add("meun13");
        list1.add("meun14");
        list1.add("meun15");
        map.put("meun1", list1);
        List<String> list2 = new ArrayList<String>();
        list2.add("meun21");
        list2.add("meun22");
        list2.add("meun23");
        map.put("meun2", list2);
        List<String> list3 = new ArrayList<String>();
        list3.add("meun31");
        list3.add("meun32");
        list3.add("meun33");
        map.put("meun3", list3);
        List<String> list22 = new ArrayList<String>();
        list22.add("meun221");
        list22.add("meun222");
        list22.add("meun223");
        map.put("meun22", list22);
//        List<String> list222 = new ArrayList<String>();
//        list222.add("meun2221");
//        list222.add("meun2222");
//        list222.add("meun2223");
//        map.put("meun222", list222);
        return map;
    }

}
