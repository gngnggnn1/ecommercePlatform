package com.neusoft.bsp.mvoinfor.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoinfor.entity.PckPackageInfo;
import org.springframework.stereotype.Repository;

@Repository
public interface PckPackageInfoMapper extends BaseMapper<String, PckPackageInfo> {
    //根据pro_id查询pck_package_info找到唯一对应值
    PckPackageInfo searchPck(int pro_id);

}
