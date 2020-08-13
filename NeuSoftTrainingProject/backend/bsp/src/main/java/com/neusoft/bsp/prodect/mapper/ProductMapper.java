package com.neusoft.bsp.prodect.mapper;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductMapper {
    String getProductImgUrl(String PRO_ID);
    List<String> getProID();
    String getProductTitle(String PRO_ID);
    String getProductPrice(String PRO_ID);
    String getProductSku(String PRO_ID);
}
