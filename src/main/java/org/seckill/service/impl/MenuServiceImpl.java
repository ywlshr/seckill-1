package org.seckill.service.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.seckill.dao.MenuDao;
import org.seckill.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class MenuServiceImpl implements MenuService {
    private Log log = LogFactory.getLog(this.getClass());

    @Autowired
    private MenuDao menuDao;

    public Map<String, List<String>> AllMenu()
    {
        List<Map<String, String>> list = menuDao.AllMenu();
        Map<String, List<String>> map = new HashMap<String, List<String>>();
        Map<String, List<String>> sortMap = new LinkedHashMap<String, List<String>>();

        String str = null;
        for (Map<String, String> one: list) {
            log.info("key:" + one.get("orz_name"));
            log.info("value:" + one.get("parent_orz_name"));
            if (one.get("parent_orz_name") == null) {
                str = one.get("orz_name");
            }
            else
            {
                String parentOrzName = one.get("parent_orz_name");
                List<String> list1 = map.get(parentOrzName);
                if (list1 != null)
                {
                     list1.add(one.get("orz_name"));
                }
                else
                {
                    List<String> list2 = new ArrayList<String>();
                    list2.add(one.get("orz_name"));
                    map.put(parentOrzName, list2);
                }
            }

        }

        SortOrz(map, sortMap, str);
        return sortMap;
    }

    private void SortOrz(Map<String, List<String>> map, Map<String, List<String>> sortMap, String str) {
        List<String> topMenu = map.get(str);
        sortMap.put(str, topMenu);
        map.remove(str);
        for (String meun: topMenu)
        {
            List<String> temp = map.get(meun);
            if(temp != null)
            {
//                sortMap.put(meun, temp);
//                map.remove(meun);
                SortOrz(map, sortMap, meun);
            }
        }
    }

}
