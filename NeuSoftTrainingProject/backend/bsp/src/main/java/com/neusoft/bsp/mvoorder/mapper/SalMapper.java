package com.neusoft.bsp.mvoorder.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoorder.entity.Sal;
import org.springframework.stereotype.Repository;

@Repository
public interface SalMapper extends BaseMapper<String, Sal> {
    //根据sao_id查询sal(一个销售订单sao对应一个明细sal)
    Sal searchSal(int sao_id);


}
