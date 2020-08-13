package com.neusoft.bsp.mvoinfor.service;

import com.neusoft.bsp.mvoinfor.entity.ManManufacturer;

public interface ManManufacturerService {

    ManManufacturer findInfoByMVO(int man_id);

    int insert(ManManufacturer manManufacturer);

}
