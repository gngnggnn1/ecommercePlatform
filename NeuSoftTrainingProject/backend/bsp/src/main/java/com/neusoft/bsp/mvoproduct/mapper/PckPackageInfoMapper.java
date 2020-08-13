package com.neusoft.bsp.mvoproduct.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoproduct.entity.PckPackageInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface PckPackageInfoMapper extends BaseMapper<String, PckPackageInfo> {
    //根据pro_id查询pck_package_info找到唯一对应值
    PckPackageInfo searchPck(int pro_id);

    int updateByPro_id(String pro_id, String width, String height, String length, String weight);

    int insertByPro_id(String pro_id, String width, String height, String length, String weight);

}
