package com.neusoft.bsp.mvoproduct.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoproduct.entity.OfpOfferPrice;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OfpOfferPriceMapper extends BaseMapper<String, OfpOfferPrice> {
    //根据pro_id查询
    List<OfpOfferPrice> getOfpByProId(int pro_id);


}
