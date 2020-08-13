package com.neusoft.bsp.parameter.service;

import com.neusoft.bsp.parameter.entity.Par;

import java.util.List;

public interface ParService {

    List<Par> searchAllPar();

    int insertPar(Par par);

    int updatePar(Par par);

    int deletePar(int par_id);

    List<Par> searchParByCd(String param_cd);

}
