package com.neusoft.bsp.mvoproduct.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoproduct.entity.PdnProductDescription;
import org.springframework.stereotype.Repository;

@Repository
public interface PdnProductDescriptionMapper extends BaseMapper<String, PdnProductDescription> {
    //根据pro_id查询pdn(唯一)
    PdnProductDescription searchPdn(int pro_id);

    int insertByPro_id(String pro_id, String descrition);

    int updateByPro_id(String pro_id, String descrition);

}
