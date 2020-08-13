package com.neusoft.bsp.mvoinfor.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoinfor.entity.PdnProductDescription;
import org.springframework.stereotype.Repository;

@Repository
public interface PdnProductDescriptionMapper extends BaseMapper<String, PdnProductDescription> {
    //根据pro_id查询pdn(唯一)
    PdnProductDescription searchPdn(int pro_id);

}
