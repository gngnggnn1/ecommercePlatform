package com.neusoft.bsp.dropshipper.service.impl;

import com.neusoft.bsp.dropshipper.mapper.DropShipperMapper;
import com.neusoft.bsp.dropshipper.service.DropShipperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("DropShipperService")
public class DropShipperServiceImpl implements DropShipperService {
    @Autowired
    DropShipperMapper mapper;

    @Override
    public String getDropShipperName(String DSR_ID){
        return mapper.getDropShipperName(DSR_ID);
    };

    @Override
    public String getDropShipperRemark(String DSR_ID){
        return mapper.getDropShipperRemark(DSR_ID);
    };

    @Override
    public void updateDropShipperName(String DSR_ID, String NAME){
        mapper.updateDropShipperName(DSR_ID, NAME);
    };

    @Override
    public void updateRemark(String DSR_ID, String REMARK){
        mapper.updateRemark(DSR_ID, REMARK);
    }

    @Override
    public String getDsr(String NAME) {
        return mapper.getDsr(NAME);
    }

    ;
}
