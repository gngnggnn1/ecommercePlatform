package com.neusoft.bsp.mvoproduct.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoproduct.entity.PrcCategory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PrcproductcategoryMapper extends BaseMapper<String, PrcCategory> {
    List<PrcCategory> getPrcByProId(int pro_id);

    List<PrcCategory> getAll();

    int updateByProId(String pro_id, String category_name);

    int insertByProId(String pro_id);
}
