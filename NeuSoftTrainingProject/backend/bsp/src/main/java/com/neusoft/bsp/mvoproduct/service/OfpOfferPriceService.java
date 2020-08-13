package com.neusoft.bsp.mvoproduct.service;

import com.neusoft.bsp.mvoproduct.entity.OfpOfferPrice;

import java.util.List;

public interface OfpOfferPriceService {

    List<OfpOfferPrice> getOfpByProId(int pro_id);

}
