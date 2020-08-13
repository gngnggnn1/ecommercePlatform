package com.neusoft.bsp.mvoorder.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoorder.entity.SaoSalesOrder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaoSalesOrderMapper extends BaseMapper<String, SaoSalesOrder> {
    //根据man_id查询sao(返回列表)
    List<SaoSalesOrder> searchSao(int man_id);

    //根据sao_id查询sao
    SaoSalesOrder searchSaoById(int sao_id);

    //发货
    int shipSao(int sao_id);

    //取消
    int cancelSao(int sao_id);



}
