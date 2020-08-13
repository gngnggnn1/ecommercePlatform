package com.neusoft.bsp.mvoproduct.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoproduct.entity.SpaSpecificAttribute;
import org.springframework.stereotype.Repository;

@Repository
public interface SpaSpecificAttributeMapper extends BaseMapper<String, SpaSpecificAttribute> {
    //根据pro_id查询唯一spa
    SpaSpecificAttribute searchSpa(int pro_id);


}
