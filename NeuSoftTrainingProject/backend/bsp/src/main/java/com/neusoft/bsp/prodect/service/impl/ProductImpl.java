package com.neusoft.bsp.prodect.service.impl;

import com.neusoft.bsp.prodect.mapper.ProductMapper;
import com.neusoft.bsp.prodect.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("/ProductService")
public class ProductImpl implements ProductService {
    @Autowired
    ProductMapper productMapper;

    @Override
    public String getProductImgUrl(String PRO_ID) {
        return productMapper.getProductImgUrl(PRO_ID);
    }

    @Override
    public List<String> getProID() {
        return productMapper.getProID();
    }

    @Override
    public String getProductTitle(String PRO_ID) {
        return productMapper.getProductTitle(PRO_ID);
    }

    @Override
    public String getProductPrice(String PRO_ID) {
        return productMapper.getProductPrice(PRO_ID);
    }

    @Override
    public String getProductSku(String PRO_ID) {
        return productMapper.getProductSku(PRO_ID);
    }
}
