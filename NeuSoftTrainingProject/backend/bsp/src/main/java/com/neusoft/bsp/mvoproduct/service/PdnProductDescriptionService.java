package com.neusoft.bsp.mvoproduct.service;

import com.neusoft.bsp.mvoproduct.entity.PdnProductDescription;

public interface PdnProductDescriptionService {
    PdnProductDescription searchPdn(int pro_id);

    int insertByPro_id(String pro_id, String descrition);

    int updateByPro_id(String pro_id, String descrition);
}
