package com.neusoft.bsp.mvoproduct.service;

import com.neusoft.bsp.mvoproduct.entity.PrcCategory;

import java.util.List;

public interface PrcCategoryService {
    List<PrcCategory> getPrcByProId(int pro_id);

    List<PrcCategory> getAll();

    int updateByProId(String pro_id, String category_name);

    int insertByProId(String pro_id);
}
