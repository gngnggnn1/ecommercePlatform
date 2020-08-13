package com.neusoft.bsp.store.service.impl;

import com.neusoft.bsp.store.entity.Store;
import com.neusoft.bsp.store.mapper.StoreMapper;
import com.neusoft.bsp.store.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("/StoreService")
public class StoreImpl implements StoreService {
    @Autowired
    StoreMapper mapper;

    @Override
    public List<String> getAmazonStore(String DSR_ID) {
        return mapper.getAmazonStore(DSR_ID);
    }

    @Override
    public List<String> getEbayStore(String DSR_ID) {
        return mapper.getEbayStore(DSR_ID);
    }

    @Override
    public void addNewStore(Store store) {
        mapper.addNewStore(store);
    }

    @Override
    public String getAmazonStoreID(String STORE_NAME) {
        return mapper.getAmazonStoreID(STORE_NAME);
    }

    @Override
    public String getEbayStoreID(String STORE_NAME) {
        return mapper.getEbayStoreID(STORE_NAME);
    }
}
