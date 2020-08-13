package com.neusoft.bsp.wishlist.service.impl;

import com.neusoft.bsp.wishlist.mapper.WishListMapper;
import com.neusoft.bsp.wishlist.service.WishListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("/WishListService")
public class WishListImpl implements WishListService {

    @Autowired
    WishListMapper wishListMapper;

    @Override
    public List<String> getProductID(String DSR_ID){
        return wishListMapper.getProductID(DSR_ID);
    }

    @Override
    public String getProductName(String PRO_ID) {
        return wishListMapper.getProductName(PRO_ID);
    }

    @Override
    public String getProductPrice(String PRO_ID) {
        return wishListMapper.getProductPrice(PRO_ID);
    }

    @Override
    public String getProductSKU(String PRO_ID) {
        return wishListMapper.getProductSKU(PRO_ID);
    }

    @Override
    public String getProductImgUrl(String PRO_ID) {
        return wishListMapper.getProductImgUrl(PRO_ID);
    }

    @Override
    public void deleteProduct(String DSR_ID, String PRO_ID) {
        wishListMapper.deleteProduct(DSR_ID, PRO_ID);
    }
}
