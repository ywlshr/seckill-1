package org.seckill.dao;

import org.seckill.entity.Privilege;

import java.util.List;

/*
* create by eagle 2017-07-30
* */
public interface PrivilegeDao {

    /**
     * 根据ID查询用户权限
     *
     * @param userid
     * @return Privilege
     */
    Privilege SelectPrivilegeByUser(String userid);

    /**
     * 查询所有权限
     * @return
     */
    List<Privilege> SelectPrivilegeAll();

}
