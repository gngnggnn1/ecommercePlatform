package com.neusoft.bsp.wallet.service.Impl;

import com.neusoft.bsp.wallet.entity.Wta;
import com.neusoft.bsp.wallet.mapper.WtaMapper;
import com.neusoft.bsp.wallet.service.WtaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("WtaService")
public class WtaServiceImpl implements WtaService {


    /**
     *使用set方法注入
     */
//    private WtaMapper wtaMapper;
//
//    @Autowired
//    public void setWtaMapper(WtaMapper wtaMapper) {
//        this.wtaMapper = wtaMapper;
//    }

    /**
     *构造器注入
     */
//    final WtaMapper wtaMapper;
//    @Autowired
//    public WtaServiceImpl(WtaMapper wtaMapper){
//        this.wtaMapper = wtaMapper;
//    }

    /**
     *变量注入
     */
    @Autowired
    WtaMapper wtaMapper;

    @Override
    public int insertWta(Wta wta) {
        return wtaMapper.insertWta(wta);
    }

    @Override
    public List<Wta> searchWtaByBuyerId(int buyer_id) {
        return wtaMapper.searchWtaByBuyerId(buyer_id);
    }

    @Override
    public List<Wta> searchAllWtaByFilter() {
        return wtaMapper.searchAllWtaByFilter();
    }

    @Override
    public Wta searchWtaByWtrId(int transaction_id) {
        return wtaMapper.searchWtaByWtrId(transaction_id);
    }

    @Override
    public int updateWtaStatus(int transaction_id, int status) {
        return wtaMapper.updateWtaStatus(transaction_id, status);
    }
}
