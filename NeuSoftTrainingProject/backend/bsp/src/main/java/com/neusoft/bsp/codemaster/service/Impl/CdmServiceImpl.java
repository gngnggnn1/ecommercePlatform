package com.neusoft.bsp.codemaster.service.Impl;

import com.neusoft.bsp.codemaster.entity.Cdm;
import com.neusoft.bsp.codemaster.mapper.CdmMapper;
import com.neusoft.bsp.codemaster.service.CdmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("CdmServiceImpl")
public class CdmServiceImpl implements CdmService {

    @Autowired
    CdmMapper cdmMapper;

    @Override
    public List<Cdm> searchAllCdm() {
        return cdmMapper.searchAllCdm();
    }

    @Override
    public int insertCdm(Cdm cdm) {
        return cdmMapper.insertCdm(cdm);
    }

    @Override
    public int updateCdm(Cdm cdm) {
        return cdmMapper.updateCdm(cdm);
    }

    @Override
    public int deleteCdm(int cdm_id) {
        return cdmMapper.deleteCdm(cdm_id);
    }

    @Override
    public List<Cdm> searchCdmByCt(String code_type) {
        return cdmMapper.searchCdmByCt(code_type);
    }
}
