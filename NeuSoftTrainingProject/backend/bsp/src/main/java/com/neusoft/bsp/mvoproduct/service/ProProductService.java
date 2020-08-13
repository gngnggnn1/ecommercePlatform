package com.neusoft.bsp.mvoproduct.service;

import com.neusoft.bsp.mvoproduct.entity.ProProduct;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProProductService {

    List<ProProduct> searchProduct(int man_id);

    ProProduct searchByProId(int pro_id);

    int updateDeletePro(int pro_id);

    int updateAIPro(@Param("pro_id") int pro_id, @Param("sts_cd") String sts_cd);

    int updateByProId(String pro_id, String title);

    int updateByPro_id(String pro_id, String sku_cd, String title, String upc, String ean, String model, String warranty_day, String retail_price);

    int insertByPro_id(String pro_id, String sku_cd,String man_id, String title, String upc, String ean, String model, String warranty_day, String retail_price);

    int getMaxId();
}
