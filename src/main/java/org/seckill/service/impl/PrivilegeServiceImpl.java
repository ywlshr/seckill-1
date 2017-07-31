package org.seckill.service.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.seckill.dao.PrivilegeDao;
import org.seckill.entity.Privilege;
import org.seckill.service.PrivilegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PrivilegeServiceImpl implements PrivilegeService{

    private Log LOG = LogFactory.getLog(this.getClass());

    @Autowired
    private PrivilegeDao privilegeDao;

    @Override
    public Privilege SelectPrivilegeByUser(String userid) {

        Privilege privilege = privilegeDao.SelectPrivilegeByUser(userid);
        return privilege;
    }

    @Override
    public List<Privilege> SelectPrivilegeList() {
        List<Privilege> list = privilegeDao.SelectPrivilegeAll();
        return list;
    }
}
