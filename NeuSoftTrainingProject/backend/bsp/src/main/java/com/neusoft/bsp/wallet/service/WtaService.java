package com.neusoft.bsp.wallet.service;

import com.neusoft.bsp.wallet.entity.Wta;

import java.util.List;

public interface WtaService {

    int insertWta(Wta wta);

    List<Wta> searchWtaByBuyerId(int buyer_id);

    List<Wta> searchAllWtaByFilter();

    Wta searchWtaByWtrId(int transaction_id);

    int updateWtaStatus(int transaction_id, int status);

}
