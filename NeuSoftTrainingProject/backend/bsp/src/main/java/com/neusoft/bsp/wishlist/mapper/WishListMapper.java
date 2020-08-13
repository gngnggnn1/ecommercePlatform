package com.neusoft.bsp.wishlist.mapper;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WishListMapper {
    List<String> getProductID(String DSR_ID);
    String getProductName(String PRO_ID);
    String getProductPrice(String PRO_ID);
    String getProductSKU(String PRO_ID);
    String getProductImgUrl(String PRO_ID);
    void deleteProduct(String DSR_ID, String PRO_ID);
}
