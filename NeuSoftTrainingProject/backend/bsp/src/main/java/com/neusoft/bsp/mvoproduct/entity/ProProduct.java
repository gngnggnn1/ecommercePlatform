package com.neusoft.bsp.mvoproduct.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class ProProduct {

    int pro_id;
    String sku_cd;
    int brd_id;
    int man_id;
    String title;
    String upc;
    String ean;
    String model;
    String warranty_day;
    BigDecimal retail_price;
    String created_by;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    Timestamp creation_date;
    String last_update_by;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    Timestamp last_update_date;
    int call_cnt;
    String remark;
    String sts_cd;
    BigDecimal mininum_retail_price;
    int replenishment_period;
    String key_words;
    String warranty;
    String time_unit;
    int stockseting;

    public int getPro_id() {
        return pro_id;
    }

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }

    public String getSku_cd() {
        return sku_cd;
    }

    public void setSku_cd(String sku_cd) {
        this.sku_cd = sku_cd;
    }

    public int getBrd_id() {
        return brd_id;
    }

    public void setBrd_id(int brd_id) {
        this.brd_id = brd_id;
    }

    public int getMan_id() {
        return man_id;
    }

    public void setMan_id(int man_id) {
        this.man_id = man_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUpc() {
        return upc;
    }

    public void setUpc(String upc) {
        this.upc = upc;
    }

    public String getEan() {
        return ean;
    }

    public void setEan(String ean) {
        this.ean = ean;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getWarranty_day() {
        return warranty_day;
    }

    public void setWarranty_day(String warranty_day) {
        this.warranty_day = warranty_day;
    }

    public BigDecimal getRetail_price() {
        return retail_price;
    }

    public void setRetail_price(BigDecimal retail_price) {
        this.retail_price = retail_price;
    }

    public String getCreated_by() {
        return created_by;
    }

    public void setCreated_by(String created_by) {
        this.created_by = created_by;
    }

    public Timestamp getCreation_date() {
        return creation_date;
    }

    public void setCreation_date(Timestamp creation_date) {
        this.creation_date = creation_date;
    }

    public String getLast_update_by() {
        return last_update_by;
    }

    public void setLast_update_by(String last_update_by) {
        this.last_update_by = last_update_by;
    }

    public Timestamp getLast_update_date() {
        return last_update_date;
    }

    public void setLast_update_date(Timestamp last_update_date) {
        this.last_update_date = last_update_date;
    }

    public int getCall_cnt() {
        return call_cnt;
    }

    public void setCall_cnt(int call_cnt) {
        this.call_cnt = call_cnt;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getSts_cd() {
        return sts_cd;
    }

    public void setSts_cd(String sts_cd) {
        this.sts_cd = sts_cd;
    }

    public BigDecimal getMininum_retail_price() {
        return mininum_retail_price;
    }

    public void setMininum_retail_price(BigDecimal mininum_retail_price) {
        this.mininum_retail_price = mininum_retail_price;
    }

    public int getReplenishment_period() {
        return replenishment_period;
    }

    public void setReplenishment_period(int replenishment_period) {
        this.replenishment_period = replenishment_period;
    }

    public String getKey_words() {
        return key_words;
    }

    public void setKey_words(String key_words) {
        this.key_words = key_words;
    }

    public String getWarranty() {
        return warranty;
    }

    public void setWarranty(String warranty) {
        this.warranty = warranty;
    }

    public String getTime_unit() {
        return time_unit;
    }

    public void setTime_unit(String time_unit) {
        this.time_unit = time_unit;
    }

    public int getStockseting() {
        return stockseting;
    }

    public void setStockseting(int stockseting) {
        this.stockseting = stockseting;
    }

    @Override
    public String toString() {
        return "ProProduct{" +
                "pro_id=" + pro_id +
                ", sku_cd='" + sku_cd + '\'' +
                ", brd_id=" + brd_id +
                ", man_id=" + man_id +
                ", title='" + title + '\'' +
                ", upc='" + upc + '\'' +
                ", ean='" + ean + '\'' +
                ", model='" + model + '\'' +
                ", warranty_day='" + warranty_day + '\'' +
                ", retail_price=" + retail_price +
                ", created_by='" + created_by + '\'' +
                ", creation_date=" + creation_date +
                ", last_update_by='" + last_update_by + '\'' +
                ", last_update_date=" + last_update_date +
                ", call_cnt=" + call_cnt +
                ", remark='" + remark + '\'' +
                ", sts_cd='" + sts_cd + '\'' +
                ", mininum_retail_price=" + mininum_retail_price +
                ", replenishment_period=" + replenishment_period +
                ", key_words='" + key_words + '\'' +
                ", warranty='" + warranty + '\'' +
                ", time_unit='" + time_unit + '\'' +
                ", stockseting=" + stockseting +
                '}';
    }
}
