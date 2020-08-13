package com.neusoft.bsp.mvoinfor.service.Impl;

import com.neusoft.bsp.mvoinfor.entity.OfpOfferPrice;
import com.neusoft.bsp.mvoinfor.mapper.OfpOfferPriceMapper;
import com.neusoft.bsp.mvoinfor.service.OfpOfferPriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("OfpOfferPriceService")
public class OfpOfferPriceServiceImpl implements OfpOfferPriceService {

    @Autowired
    OfpOfferPriceMapper ofpOfferPriceMapper;

    @Override
    public List<OfpOfferPrice> getOfpByProId(int pro_id) {
        return ofpOfferPriceMapper.getOfpByProId(pro_id);
    }
}
