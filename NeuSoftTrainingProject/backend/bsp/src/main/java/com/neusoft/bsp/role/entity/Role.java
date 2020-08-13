package com.neusoft.bsp.role.entity;

import com.neusoft.bsp.common.base.BaseEntity;

public class Role implements BaseEntity<String> {
    String role_id;
    String role_name;
    String description;

    public String getRole_id() {
        return role_id;
    }

    public void setRole_id(String role_id) {
        this.role_id = role_id;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Role{" +
                "role_id='" + role_id + '\'' +
                ", role_name='" + role_name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    @Override
    public String getId() {
        return role_id;
    }
}
