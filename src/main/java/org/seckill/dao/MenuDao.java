package org.seckill.dao;

import java.util.List;
import java.util.Map;

public interface MenuDao {

    /**
     * get All Menu
     * @return
     */
    List<Map<String, String>> AllMenu();
}
