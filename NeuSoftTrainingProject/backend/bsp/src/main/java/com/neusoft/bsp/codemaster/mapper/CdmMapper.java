package com.neusoft.bsp.codemaster.mapper;

import com.neusoft.bsp.codemaster.entity.Cdm;
import com.neusoft.bsp.common.base.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CdmMapper extends BaseMapper<String, Cdm> {

    //查询所有的cdm
    List<Cdm> searchAllCdm();

    //新增cdm
    int insertCdm(Cdm cdm);

    //修改cdm
    int updateCdm(Cdm cdm);

    //根据cmd_id(主键)删除cdm
    int deleteCdm(int cdm_id);

    //根据code_type查询cdm
    List<Cdm> searchCdmByCt(String code_type);


}
