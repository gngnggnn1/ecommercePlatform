package com.neusoft.bsp.menu.service;


import com.neusoft.bsp.menu.entity.Menu;

import java.util.List;

public interface MenuService {


    List<Menu> getAuthMenu(String username);

    Menu getById(String menuid);

    List<Menu> getAll();

    int deleteByUrlAndName(String url,String name);

    int updateById(Menu menu);

    List<Menu> getMenuByRoleId(String id);

    List<Menu> getAllFather();

    int insertAuthByRoleId(String role_id, List<String> menu_ids);

    int deleteByRoleId(String role_id);

    int addMenu(Menu menu);

    int deleteById(String id);

}
