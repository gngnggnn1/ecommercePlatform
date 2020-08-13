package com.neusoft.bsp.mvoproduct.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoproduct.entity.SpvSpecificAttributeValue;
import org.springframework.stereotype.Repository;

@Repository
public interface SpvSpecificAttributeValueMapper extends BaseMapper<String, SpvSpecificAttributeValue> {
    //根据spa_id查询唯一的spv
    SpvSpecificAttributeValue searchSpv(int spa_id);

}
