package com.neusoft.bsp.mvoinfo.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoinfo.entity.ManManufacturer;
import org.springframework.stereotype.Repository;

@Repository
public interface ManManufacturerMapper extends BaseMapper<String, ManManufacturer> {
    //根据当前MVO(sys_user)保存的MAN_BUYER_ID查询(man_manufacturer)公司信息表
    ManManufacturer findInfoByMVO(int man_id);
    //更新(man_manufacturer)
    int insert(ManManufacturer manManufacturer);
    //选取刚加入最大的一条记录的man_id(反馈给user的man_buyer_id)
    int searchLatestManiId();

}
