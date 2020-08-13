package com.neusoft.bsp.mvoproduct.service.Impl;

import com.neusoft.bsp.mvoproduct.entity.PdnProductDescription;
import com.neusoft.bsp.mvoproduct.mapper.PdnProductDescriptionMapper;
import com.neusoft.bsp.mvoproduct.service.PdnProductDescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("PdnProductDescriptionService")
public class PdnProductDescriptionServiceImpl implements PdnProductDescriptionService {

    @Autowired
    PdnProductDescriptionMapper pdnProductDescriptionMapper;

    @Override
    public PdnProductDescription searchPdn(int pro_id) {
        return pdnProductDescriptionMapper.searchPdn(pro_id);
    }

    @Override
    public int insertByPro_id(String pro_id, String descrition) {
        return pdnProductDescriptionMapper.insertByPro_id(pro_id, descrition);
    }

    @Override
    public int updateByPro_id(String pro_id, String descrition) {
        return pdnProductDescriptionMapper.updateByPro_id(pro_id, descrition);
    }
}
