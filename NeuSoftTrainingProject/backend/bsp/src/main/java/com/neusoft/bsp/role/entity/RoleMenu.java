package com.neusoft.bsp.role.entity;

import com.neusoft.bsp.common.base.BaseEntity;

import java.util.Arrays;
import java.util.List;

public class RoleMenu implements BaseEntity<String> {
    int id;
    String role_id;
    List<String> menu_id;

    public String getId() {
        return String.valueOf(id);
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole_id() {
        return role_id;
    }

    public void setRole_id(String role_id) {
        this.role_id = role_id;
    }

    public List<String> getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(List<String> menu_id) {
        this.menu_id = menu_id;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
