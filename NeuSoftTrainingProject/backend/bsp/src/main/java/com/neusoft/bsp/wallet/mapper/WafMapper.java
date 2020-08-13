package com.neusoft.bsp.wallet.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.wallet.entity.Waf;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;

@Repository
public interface WafMapper extends BaseMapper<String, Waf> {

    //根据buy_id查询Waf
    Waf searchWafById(int buyer_id);

    //钱包注册插入waf
    int insertWaf(Waf waf);

    //提现充值更新waf
    int updateWaf(Waf waf);

    //更新available_money,depositing_money,withdrawing_money
    int updateMoney(@Param("buyer_id") int buyer_id, @Param("a_money") BigDecimal a_money, @Param("d_money") BigDecimal d_money, @Param("w_money") BigDecimal w_money);

}
