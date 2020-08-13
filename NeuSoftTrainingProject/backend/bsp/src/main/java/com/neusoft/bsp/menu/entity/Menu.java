package com.neusoft.bsp.menu.entity;

import com.neusoft.bsp.common.base.BaseEntity;

import java.util.ArrayList;
import java.util.List;

/**
 * 实际上是vo 因为有children
 */
public class Menu implements BaseEntity<String> {
    String menu_id;
    String menu_name;
    String parent_id;
    int menu_order;
    String menu_icon;
    String menu_type;
    List<Menu> children = new ArrayList<>();
    String menu_url;
    boolean menu_hidden;

    public boolean getMenu_hidden() {
        return menu_hidden;
    }

    public void setMenu_hidden(boolean menu_hidden) {
        this.menu_hidden = menu_hidden;
    }

    public String getMenu_url() {
        return menu_url;
    }

    public void setMenu_url(String menu_url) {
        this.menu_url = menu_url;
    }

    public String getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(String menu_id) {
        this.menu_id = menu_id;
    }

    public String getMenu_name() {
        return menu_name;
    }

    public void setMenu_name(String menu_name) {
        this.menu_name = menu_name;
    }

    public String getParent_id() {
        return parent_id;
    }

    public void setParent_id(String parent_id) {
        this.parent_id = parent_id;
    }

    public int getMenu_order() {
        return menu_order;
    }

    public void setMenu_order(int menu_order) {
        this.menu_order = menu_order;
    }

    public String getMenu_icon() {
        return menu_icon;
    }

    public void setMenu_icon(String menu_icon) {
        this.menu_icon = menu_icon;
    }

    public String getMenu_type() {
        return menu_type;
    }

    public void setMenu_type(String menu_type) {
        this.menu_type = menu_type;
    }

    public List<Menu> getChildren() {
        return children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }

    public void addChild(Menu menu){
        this.children.add(menu);
    }

    @Override
    public String getId() {
        return null;
    }
}
