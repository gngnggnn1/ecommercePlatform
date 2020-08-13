package com.neusoft.bsp.mvoproduct.service.Impl;

import com.neusoft.bsp.mvoproduct.entity.PrcCategory;
import com.neusoft.bsp.mvoproduct.mapper.PrcproductcategoryMapper;
import com.neusoft.bsp.mvoproduct.service.PrcCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("prcCategoryService")
public class PrcCategoryServiceImpl implements PrcCategoryService {

    @Autowired
    PrcproductcategoryMapper prcproductcategoryMapper;
    @Override
    public List<PrcCategory> getPrcByProId(int pro_id) {
        return prcproductcategoryMapper.getPrcByProId(pro_id);
    }

    @Override
    public List<PrcCategory> getAll() {
        return prcproductcategoryMapper.getAll();
    }

    @Override
    public int updateByProId(String pro_id, String category_name) {
        return prcproductcategoryMapper.updateByProId(pro_id, category_name);
    }

    @Override
    public int insertByProId(String pro_id) {
        return prcproductcategoryMapper.insertByProId(pro_id);
    }
}
