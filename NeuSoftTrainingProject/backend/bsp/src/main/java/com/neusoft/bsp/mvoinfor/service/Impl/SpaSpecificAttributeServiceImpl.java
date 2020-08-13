package com.neusoft.bsp.mvoinfor.service.Impl;

import com.neusoft.bsp.mvoinfor.entity.SpaSpecificAttribute;
import com.neusoft.bsp.mvoinfor.mapper.SpaSpecificAttributeMapper;
import com.neusoft.bsp.mvoinfor.service.SpaSpecificAttributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("SpaSpecificAttributeService")
public class SpaSpecificAttributeServiceImpl implements SpaSpecificAttributeService {

    @Autowired
    SpaSpecificAttributeMapper spaSpecificAttributeMapper;

    @Override
    public SpaSpecificAttribute searchSpa(int pro_id) {
        return spaSpecificAttributeMapper.searchSpa(pro_id);
    }
}
