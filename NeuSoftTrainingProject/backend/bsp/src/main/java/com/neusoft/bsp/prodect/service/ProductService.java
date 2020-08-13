package com.neusoft.bsp.prodect.service;

import java.util.List;

public interface ProductService {
    String getProductImgUrl(String PRO_ID);
    List<String> getProID();
    String getProductTitle(String PRO_ID);
    String getProductPrice(String PRO_ID);
    String getProductSku(String PRO_ID);
}
