package com.neusoft.bsp.multientitys;

import com.neusoft.bsp.mvoinfo.entity.ManManufacturer;
import com.neusoft.bsp.user.entity.User;

public class UserManManufacturer {

    public User user;
    public ManManufacturer manManufacturer;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ManManufacturer getManManufacturer() {
        return manManufacturer;
    }

    public void setManManufacturer(ManManufacturer manManufacturer) {
        this.manManufacturer = manManufacturer;
    }

    @Override
    public String toString() {
        return "UserManManufacturer{" +
                "user=" + user.toString() +
                ", manManufacturer=" + manManufacturer.toString() +
                '}';
    }
}
