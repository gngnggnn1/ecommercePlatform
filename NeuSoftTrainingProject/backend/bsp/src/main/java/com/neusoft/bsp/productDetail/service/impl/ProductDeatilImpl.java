package com.neusoft.bsp.productDetail.service.impl;

import com.neusoft.bsp.productDetail.mapper.ProductDetailMapper;
import com.neusoft.bsp.productDetail.service.ProductDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("/ProductDetailService")
public class ProductDeatilImpl implements ProductDetailService {

    @Autowired
    ProductDetailMapper productDetailMapper;

    @Override
    public String getProductID(String TITLE) {
        return productDetailMapper.getProductID(TITLE);
    }

    @Override
    public String getProductImgUrl(String PRO_ID) {
        return productDetailMapper.getProductImgUrl(PRO_ID);
    }

    @Override
    public String getProductDescription(String PRO_ID) {
        return productDetailMapper.getProductDescription(PRO_ID);
    }

    @Override
    public String getProductPrice(String TITLE) {
        return productDetailMapper.getProductPrice(TITLE);
    }

    @Override
    public String getProductSku(String TITLE) {
        return productDetailMapper.getProductSku(TITLE);
    }

    @Override
    public String getProductBrandID(String TITLE) {
        return productDetailMapper.getProductBrandID(TITLE);
    }

    @Override
    public String getProductBrandName(String BRD_ID) {
        return productDetailMapper.getProductBrandName(BRD_ID);
    }

    @Override
    public void addToWishList(String DSR_ID, String PRO_ID) {
        productDetailMapper.addToWishList(DSR_ID, PRO_ID);
    }

    @Override
    public int checkWishList(String DSR_ID, String PRO_ID) {
        return productDetailMapper.checkWishList(DSR_ID, PRO_ID);
    }

    @Override
    public void addToStore(String STR_ID, String PRO_ID, String RETAIL_PRICE) {
        productDetailMapper.addToStore(STR_ID, PRO_ID, RETAIL_PRICE);
    }
}
