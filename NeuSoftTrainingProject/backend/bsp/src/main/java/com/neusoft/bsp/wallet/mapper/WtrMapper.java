package com.neusoft.bsp.wallet.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.wallet.entity.Wtr;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WtrMapper extends BaseMapper<String, Wtr> {
    //插入wtr
    int insertWtr(Wtr wtr);

    //根据buyer_id查wtr列表
    List<Wtr> searchWtrByBuyerId(int buyer_id);

    //查询所有wtr列表, 过滤transaction_type=3的(消费记录)
    List<Wtr> searchAllWtrByFilter();

    //根据TRANSACTION_ID查询wtr
    Wtr searchWtrById(int transaction_id);

    //根据TRANSACTION_ID更新wtr状态
    int updateWtrStatus(@Param("transaction_id") int transaction_id, @Param("status") int status);

    int getMaxId();

}
