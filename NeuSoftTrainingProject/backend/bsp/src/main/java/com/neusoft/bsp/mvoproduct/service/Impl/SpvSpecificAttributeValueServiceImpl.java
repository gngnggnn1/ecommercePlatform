package com.neusoft.bsp.mvoproduct.service.Impl;

import com.neusoft.bsp.mvoproduct.entity.SpvSpecificAttributeValue;
import com.neusoft.bsp.mvoproduct.mapper.SpvSpecificAttributeValueMapper;
import com.neusoft.bsp.mvoproduct.service.SpvSpecificAttributeValueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("SpvSpecificAttributeValueService")
public class SpvSpecificAttributeValueServiceImpl implements SpvSpecificAttributeValueService {
    @Autowired
    SpvSpecificAttributeValueMapper spvSpecificAttributeValueMapper;

    @Override
    public SpvSpecificAttributeValue searchSpv(int spa_id) {
        return spvSpecificAttributeValueMapper.searchSpv(spa_id);
    }
}
