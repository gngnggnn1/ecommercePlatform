package com.neusoft.bsp.mvoinfor.service;

import com.neusoft.bsp.mvoinfor.entity.OfpOfferPrice;

import java.util.List;

public interface OfpOfferPriceService {

    List<OfpOfferPrice> getOfpByProId(int pro_id);

}
