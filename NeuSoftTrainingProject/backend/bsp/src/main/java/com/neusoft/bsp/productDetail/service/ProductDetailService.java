package com.neusoft.bsp.productDetail.service;

public interface ProductDetailService {
    String getProductID(String TITLE);
    String getProductImgUrl(String PRO_ID);
    String getProductDescription(String PRO_ID);
    String getProductPrice(String TITLE);
    String getProductSku(String TITLE);
    String getProductBrandID(String TITLE);
    String getProductBrandName(String BRD_ID);
    void addToWishList(String DSR_ID, String PRO_ID);
    int checkWishList(String DSR_ID, String PRO_ID);
    void addToStore(String STR_ID, String PRO_ID, String RETAIL_PRICE);
}
