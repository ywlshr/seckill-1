package org.seckill.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.Privilege;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * 配置Spring和Junit整合,junit启动时加载springIOC容器
 * spring-test,junit
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class PrivilegeDaoTest {

    @Resource
    private PrivilegeDao privilegeDao;


    @Test
    public void selectPrivilegeByUser() throws Exception {

        String userid = "y00217209";
        Privilege privilege = privilegeDao.SelectPrivilegeByUser(userid);
        System.out.print(privilege.toString());
    }

}