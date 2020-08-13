package com.neusoft.bsp.mvoproduct.service.Impl;

import com.neusoft.bsp.mvoproduct.entity.OfpOfferPrice;
import com.neusoft.bsp.mvoproduct.mapper.OfpOfferPriceMapper;
import com.neusoft.bsp.mvoproduct.service.OfpOfferPriceService;
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
