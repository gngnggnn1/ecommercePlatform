package com.neusoft.bsp.mvoorder.service;

import com.neusoft.bsp.mvoorder.entity.SaoSalesOrder;

import java.util.List;

public interface SaoSalesOrderService {

    List<SaoSalesOrder> searchSao(int man_id);

    SaoSalesOrder searchSaoById(int sao_id);

    int shipSao(int sao_id);

    int cancelSao(int sao_id);

}
