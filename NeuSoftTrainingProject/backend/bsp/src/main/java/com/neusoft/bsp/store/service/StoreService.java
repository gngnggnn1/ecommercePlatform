package com.neusoft.bsp.store.service;

import com.neusoft.bsp.store.entity.Store;

import java.util.List;

public interface StoreService {
    List<String> getAmazonStore(String DSR_ID);
    List<String> getEbayStore(String DSR_ID);
    void addNewStore(Store store);
    String getAmazonStoreID(String STORE_NAME);
    String getEbayStoreID(String STORE_NAME);
}
