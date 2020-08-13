package com.neusoft.bsp.mvoinfo.service.Impl;

import com.neusoft.bsp.mvoinfo.entity.ManManufacturer;
import com.neusoft.bsp.mvoinfo.mapper.ManManufacturerMapper;
import com.neusoft.bsp.mvoinfo.service.ManManufacturerService;
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

    @Override
    public int searchLatestManiId() {
        return manManufacturerMapper.searchLatestManiId();
    }
}
