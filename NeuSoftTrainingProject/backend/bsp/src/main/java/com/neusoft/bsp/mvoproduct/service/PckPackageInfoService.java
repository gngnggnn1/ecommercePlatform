package com.neusoft.bsp.mvoproduct.service;

import com.neusoft.bsp.mvoproduct.entity.PckPackageInfo;

public interface PckPackageInfoService {
    PckPackageInfo searchPck(int pro_id);

    int updateByPro_id(String pro_id, String width, String height, String length, String weight);

    int insertByPro_id(String pro_id, String width, String height, String length, String weight);
}
