package org.seckill.dao;

import com.sun.net.httpserver.Authenticator;
import org.apache.ibatis.annotations.Param;
import org.seckill.entity.Success;
import org.seckill.entity.SuccessKilled;

import java.util.List;

/**
 * Created by wchb7 on 16-5-8.
 */
public interface SuccessKilledDao {

    /**
     * 插入购买明细,可过滤重复(数据库有联合主键)
     *
     * @param seckilledId
     * @param userPhone
     * @return
     */
    int insertSuccessKilled(@Param("seckilledId") long seckilledId, @Param("userPhone") long userPhone);

    /**
     * 根据ID查询SuccessKilled并携带秒杀产品对象实体
     *
     * @param seckilledId
     * @param userPhone
     * @return
     */
    SuccessKilled queryByIdWithSeckill(@Param("seckilledId") long seckilledId, @Param("userPhone") long userPhone);

    /**
     * 查询所有秒杀成功的数据
     * @return
     */
    List<SuccessKilled> queryAllSuccessSeckill();

    /**
     * 查询success表
     * @return
     */
    List<Success> queryAllSuccessSeckilled();

}
