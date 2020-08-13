package com.neusoft.bsp.wallet.service;

import com.neusoft.bsp.wallet.entity.Waa;

public interface WaaService {

    Waa searchWaaByName(String account_name);

    int insertWaa(Waa waa);

    int searchAuthority(Waa waa);

}
