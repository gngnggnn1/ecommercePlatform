package com.neusoft.bsp.wallet.service.Impl;

import com.neusoft.bsp.wallet.entity.Waa;
import com.neusoft.bsp.wallet.mapper.WaaMapper;
import com.neusoft.bsp.wallet.service.WaaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("WaaService")
public class WaaServiceImpl implements WaaService {

    @Autowired
    WaaMapper waaMapper;

    @Override
    public Waa searchWaaByName(String account_name) {
        return waaMapper.searchWaaByName(account_name);
    }

    @Override
    public int insertWaa(Waa waa) {
        return waaMapper.insertWaa(waa);
    }

    @Override
    public int searchAuthority(Waa waa) {
        return waaMapper.searchAuthority(waa);
    }
}
