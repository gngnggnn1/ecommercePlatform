package com.neusoft.bsp.mvoinfor.service.Impl;

import com.neusoft.bsp.mvoinfor.entity.ManManufacturer;
import com.neusoft.bsp.mvoinfor.mapper.ManManufacturerMapper;
import com.neusoft.bsp.mvoinfor.service.ManManufacturerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ManManufacturerService")
public class ManManufacturerServiceImpl implements ManManufacturerService {

    @Autowired
    ManManufacturerMapper manManufacturerMapper;

    @Override
    public ManManufacturer findInfoByMVO(int man_id) {
        return manManufacturerMapper.findInfoByMVO(man_id);
    }

    @Override
    public int insert(ManManufacturer manManufacturer) {
        return manManufacturerMapper.insert(manManufacturer);
    }
}
