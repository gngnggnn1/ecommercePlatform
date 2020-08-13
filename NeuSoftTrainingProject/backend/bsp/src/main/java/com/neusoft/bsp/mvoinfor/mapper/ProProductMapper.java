package com.neusoft.bsp.mvoinfor.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoinfor.entity.ProProduct;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProProductMapper extends BaseMapper<String, ProProduct> {
    //根据man_id(sys_user对应的man_buyer_id)查询pro_product
    List<ProProduct> searchProduct(int man_id);

}
