package com.neusoft.bsp.wallet.service;

import com.neusoft.bsp.wallet.entity.Waf;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;

public interface WafService {

    Waf searchWafById(int buyer_id);

    int insertWaf(Waf waf);

    int updateWaf(Waf waf);

    int updateMoney(int buyer_id, BigDecimal a_money, BigDecimal d_money, BigDecimal w_money);


}
