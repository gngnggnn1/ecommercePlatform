package com.neusoft.bsp.wishlist.service;

import java.util.List;

public interface WishListService {
    List<String> getProductID(String DSR_ID);
    String getProductName(String PRO_ID);
    String getProductPrice(String PRO_ID);
    String getProductSKU(String PRO_ID);
    String getProductImgUrl(String PRO_ID);
    void deleteProduct(String DSR_ID, String PRO_ID);
}
