package com.neusoft.bsp.mvoinfo.service;

import com.neusoft.bsp.mvoinfo.entity.ManManufacturer;

public interface ManManufacturerService {

    ManManufacturer findInfoByMVO(int man_id);

    int insert(ManManufacturer manManufacturer);

    int searchLatestManiId();

}
