package com.neusoft.bsp.parameter.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.parameter.entity.Par;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ParMapper extends BaseMapper<String, Par> {

    //查询所有的par
    List<Par> searchAllPar();

    //新增par
    int insertPar(Par par);

    //修改par
    int updatePar(Par par);

    //根据par_id(主键)删除par
    int deletePar(int par_id);

    //根据param_cd查询par
    List<Par> searchParByCd(String param_cd);


}
