package com.neusoft.bsp.mvoproduct.service.Impl;

import com.neusoft.bsp.mvoproduct.entity.ProProduct;
import com.neusoft.bsp.mvoproduct.mapper.ProProductMapper;
import com.neusoft.bsp.mvoproduct.service.ProProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ProProductService")
public class ProProductServiceImpl implements ProProductService {

    @Autowired
    ProProductMapper proProductMapper;

    @Override
    public List<ProProduct> searchProduct(int man_id) {
        return proProductMapper.searchProduct(man_id);
    }

    @Override
    public ProProduct searchByProId(int pro_id) {
        return proProductMapper.searchByProId(pro_id);
    }

    @Override
    public int updateDeletePro(int pro_id) {
        return proProductMapper.updateDeletePro(pro_id);
    }

    @Override
    public int updateAIPro(int pro_id, String sts_cd) {
        return proProductMapper.updateAIPro(pro_id, sts_cd);
    }

    @Override
    public int updateByProId(String pro_id, String title) {
        return proProductMapper.updateByProId(pro_id, title);
    }

    @Override
    public int updateByPro_id(String pro_id, String sku_cd, String title, String upc, String ean, String model, String warranty_day, String retail_price) {
        return proProductMapper.updateByPro_id(pro_id, sku_cd, title, upc, ean, model, warranty_day, retail_price);
    }

    @Override
    public int insertByPro_id(String pro_id, String sku_cd,String man_id, String title, String upc, String ean, String model, String warranty_day, String retail_price) {
        return proProductMapper.insertByPro_id(pro_id, sku_cd, man_id, title, upc, ean, model, warranty_day, retail_price);
    }

    @Override
    public int getMaxId() {
        return proProductMapper.getMaxId();
    }
}
