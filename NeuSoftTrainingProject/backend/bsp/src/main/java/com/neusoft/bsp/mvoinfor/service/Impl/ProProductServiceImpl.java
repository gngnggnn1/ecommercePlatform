package com.neusoft.bsp.mvoinfor.service.Impl;

import com.neusoft.bsp.mvoinfor.entity.ProProduct;
import com.neusoft.bsp.mvoinfor.mapper.ProProductMapper;
import com.neusoft.bsp.mvoinfor.service.ProProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ProProductService")
public class ProProductServiceImpl implements ProProductService {

    @Autowired
    ProProductMapper proProductMapper;

    @Override
    public List<ProProduct> searchProduct(int man_id) {
        return proProductMapper.searchProduct(man_id);
    }
}
