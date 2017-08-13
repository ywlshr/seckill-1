package org.seckill.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
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

    @RequestMapping(value = "/firstmenu", method = RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String exposer() {
        Map map = new HashMap();
        List<String> list = new ArrayList<String>();
        list.add("menu1");
        list.add("menu2");
        list.add("menu3");
        map.put("menu", list);
        List<String> list1 = new ArrayList<String>();
        list1.add("menu11");
        list1.add("menu12");
        list1.add("menu13");
        list1.add("menu14");
        list1.add("menu15");
        map.put("menu1", list1);
        List<String> list2 = new ArrayList<String>();
        list2.add("menu21");
        list2.add("menu22");
        list2.add("menu23");
        map.put("menu2", list2);
        List<String> list3 = new ArrayList<String>();
        list3.add("menu31");
        list3.add("menu32");
        list3.add("menu33");
        map.put("menu3", list3);
        List<String> list22 = new ArrayList<String>();
        list22.add("menu221");
        list22.add("menu222");
        list22.add("menu223");
        map.put("menu22", list22);
        List<String> list222 = new ArrayList<String>();
        list222.add("menu2221");
        list222.add("menu2222");
        list222.add("menu2223");
        map.put("menu222", list222);
        ObjectMapper mapper = new ObjectMapper();
        String json = null;
        try {
            json = mapper.writeValueAsString(map);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        return json;
    }

}
