package com.neusoft.bsp.wallet.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.wallet.entity.Wta;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WtaMapper extends BaseMapper<String, Wta> {
    //插入wta
    int insertWta(Wta wta);

    //根据buyer_id查询wta列表
    List<Wta> searchWtaByBuyerId(int buyer_id);

    //查询所有wta列表, 过滤operate_type=3的(消费记录)
    List<Wta> searchAllWtaByFilter();

    //根据TRANSACTION_ID(对应的钱包流水)查询wta
    Wta searchWtaByWtrId(int transaction_id);

    //根据TRANSACTION_ID更新状态wta
    int updateWtaStatus(@Param("transaction_id") int transaction_id, @Param("status") int status);



}
