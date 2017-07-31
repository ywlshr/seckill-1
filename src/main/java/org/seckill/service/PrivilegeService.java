package org.seckill.service;

import org.seckill.entity.Privilege;

import java.util.List;

public interface PrivilegeService {
    /**
     * 查询权限by User
     * @param userid
     * @return Privilege
     */
    Privilege SelectPrivilegeByUser(String userid);

    /**
     *
     * @return
     */
    List<Privilege> SelectPrivilegeList();
}
