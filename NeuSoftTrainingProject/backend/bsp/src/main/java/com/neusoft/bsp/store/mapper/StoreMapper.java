package com.neusoft.bsp.store.mapper;

import com.neusoft.bsp.store.entity.Store;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StoreMapper {
    List<String> getAmazonStore(String DSR_ID);
    List<String> getEbayStore(String DSR_ID);
    String getAmazonStoreID(String STORE_NAME);
    String getEbayStoreID(String STORE_NAME);
    void addNewStore(Store store);
}
