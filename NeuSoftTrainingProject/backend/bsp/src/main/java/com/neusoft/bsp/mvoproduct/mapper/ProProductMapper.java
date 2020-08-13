package com.neusoft.bsp.mvoproduct.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoproduct.entity.ProProduct;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProProductMapper extends BaseMapper<String, ProProduct> {
    //根据man_id(sys_user对应的man_buyer_id)查询pro_product
    List<ProProduct> searchProduct(int man_id);

    //根据pro_id查询pro_product
    ProProduct searchByProId(int pro_id);

    //根据pro_id更新为删除状态D
    int updateDeletePro(int pro_id);

    //根据pro_id更新上架(A)下架(I)状态
    int updateAIPro(@Param("pro_id") int pro_id, @Param("sts_cd") String sts_cd);

    int updateByProId(String pro_id, String title);

    int updateByPro_id(String pro_id, String sku_cd, String title, String upc, String ean, String model, String warranty_day, String retail_price);

    int insertByPro_id(String pro_id, String sku_cd,String man_id, String title,  String upc, String ean, String model, String warranty_day, String retail_price);

    int getMaxId();
}
