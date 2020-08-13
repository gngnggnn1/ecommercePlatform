package com.neusoft.bsp.wallet.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.util.Date;

public class Waa {

    int buyer_id;
    String account_name;
    String email;
    String password;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    Date active_time;
    String is_active;
    int status;
    String create_by;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    Timestamp create_time;
    String last_update_by;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    Timestamp last_update_time;
    int account_type;
    String hold_order_time;
    String auto_pay_status;

    public int getBuyer_id() {
        return buyer_id;
    }

    public void setBuyer_id(int buyer_id) {
        this.buyer_id = buyer_id;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getActive_time() {
        return active_time;
    }

    public void setActive_time(Date active_time) {
        this.active_time = active_time;
    }

    public String getIs_active() {
        return is_active;
    }

    public void setIs_active(String is_active) {
        this.is_active = is_active;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getCreate_by() {
        return create_by;
    }

    public void setCreate_by(String create_by) {
        this.create_by = create_by;
    }

    public Timestamp getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public String getLast_update_by() {
        return last_update_by;
    }

    public void setLast_update_by(String last_update_by) {
        this.last_update_by = last_update_by;
    }

    public Timestamp getLast_update_time() {
        return last_update_time;
    }

    public void setLast_update_time(Timestamp last_update_time) {
        this.last_update_time = last_update_time;
    }

    public int getAccount_type() {
        return account_type;
    }

    public void setAccount_type(int account_type) {
        this.account_type = account_type;
    }

    public String getHold_order_time() {
        return hold_order_time;
    }

    public void setHold_order_time(String hold_order_time) {
        this.hold_order_time = hold_order_time;
    }

    public String getAuto_pay_status() {
        return auto_pay_status;
    }

    public void setAuto_pay_status(String auto_pay_status) {
        this.auto_pay_status = auto_pay_status;
    }

    @Override
    public String toString() {
        return "Waa{" +
                "buyer_id=" + buyer_id +
                ", account_name='" + account_name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", active_time=" + active_time +
                ", is_active='" + is_active + '\'' +
                ", status=" + status +
                ", create_by='" + create_by + '\'' +
                ", create_time=" + create_time +
                ", last_update_by='" + last_update_by + '\'' +
                ", last_update_time=" + last_update_time +
                ", account_type=" + account_type +
                ", hold_order_time='" + hold_order_time + '\'' +
                ", auto_pay_status='" + auto_pay_status + '\'' +
                '}';
    }
}
