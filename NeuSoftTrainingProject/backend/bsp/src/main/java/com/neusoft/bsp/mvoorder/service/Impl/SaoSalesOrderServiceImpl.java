package com.neusoft.bsp.mvoorder.service.Impl;

import com.neusoft.bsp.mvoorder.entity.SaoSalesOrder;
import com.neusoft.bsp.mvoorder.mapper.SaoSalesOrderMapper;
import com.neusoft.bsp.mvoorder.service.SaoSalesOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("SaoSalesOrderService")
public class SaoSalesOrderServiceImpl implements SaoSalesOrderService {

    @Autowired
    SaoSalesOrderMapper saoSalesOrderMapper;

    @Override
    public List<SaoSalesOrder> searchSao(int man_id) {
        return saoSalesOrderMapper.searchSao(man_id);
    }

    @Override
    public SaoSalesOrder searchSaoById(int sao_id) {
        return saoSalesOrderMapper.searchSaoById(sao_id);
    }

    @Override
    public int shipSao(int sao_id) {
        return saoSalesOrderMapper.shipSao(sao_id);
    }

    @Override
    public int cancelSao(int sao_id) {
        return saoSalesOrderMapper.cancelSao(sao_id);
    }
}
