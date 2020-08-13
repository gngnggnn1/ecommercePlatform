package com.neusoft.bsp.codemaster.service;

import com.neusoft.bsp.codemaster.entity.Cdm;

import java.util.List;

public interface CdmService {

    List<Cdm> searchAllCdm();

    int insertCdm(Cdm cdm);

    int updateCdm(Cdm cdm);

    int deleteCdm(int cdm_id);

    List<Cdm> searchCdmByCt(String code_type);

}
