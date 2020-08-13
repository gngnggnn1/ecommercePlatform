package com.neusoft.bsp.mvoinfor.service.Impl;

import com.neusoft.bsp.mvoinfor.entity.PdnProductDescription;
import com.neusoft.bsp.mvoinfor.mapper.PdnProductDescriptionMapper;
import com.neusoft.bsp.mvoinfor.service.PdnProductDescriptionService;
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
}
