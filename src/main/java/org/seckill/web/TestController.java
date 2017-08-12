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
        List<String> list = new ArrayList<String>();
        list.add("meun11");
        list.add("meun12");
        list.add("meun13");
        list.add("meun14");
        list.add("meun15");
        map.put("meun1", list);
        map.put("meun2", list);
        map.put("meun3", list);
        return map;
    }

}
