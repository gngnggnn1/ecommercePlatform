package com.neusoft.bsp.mvoorder.service.Impl;

import com.neusoft.bsp.mvoorder.entity.Sal;
import com.neusoft.bsp.mvoorder.mapper.SalMapper;
import com.neusoft.bsp.mvoorder.service.Salservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("Salservice")
public class SalServiceImpl implements Salservice {

    @Autowired
    SalMapper salMapper;

    @Override
    public Sal searchSal(int sao_id) {
        return salMapper.searchSal(sao_id);
    }
}
