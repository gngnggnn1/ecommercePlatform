package com.neusoft.bsp.parameter.service.Impl;

import com.neusoft.bsp.parameter.entity.Par;
import com.neusoft.bsp.parameter.mapper.ParMapper;
import com.neusoft.bsp.parameter.service.ParService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ParService")
public class ParServiceImpl implements ParService {

    @Autowired
    ParMapper parMapper;

    @Override
    public List<Par> searchAllPar() {
        return parMapper.searchAllPar();
    }

    @Override
    public int insertPar(Par par) {
        return parMapper.insertPar(par);
    }

    @Override
    public int updatePar(Par par) {
        return parMapper.updatePar(par);
    }

    @Override
    public int deletePar(int par_id) {
        return parMapper.deletePar(par_id);
    }

    @Override
    public List<Par> searchParByCd(String param_cd) {
        return parMapper.searchParByCd(param_cd);
    }
}
