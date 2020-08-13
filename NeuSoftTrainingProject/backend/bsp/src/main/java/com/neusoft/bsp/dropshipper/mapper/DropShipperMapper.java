package com.neusoft.bsp.dropshipper.mapper;

import org.springframework.stereotype.Repository;

@Repository
public interface DropShipperMapper {
    String getDropShipperName(String DSR_ID);
    String getDropShipperRemark(String DSR_ID);
    void updateDropShipperName(String DSR_ID, String NAME);
    void updateRemark(String DSR_ID, String REMARK);
    String getDsr(String NAME);
}
