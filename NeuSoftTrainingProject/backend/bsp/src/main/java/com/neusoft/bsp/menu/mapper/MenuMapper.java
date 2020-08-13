package com.neusoft.bsp.menu.mapper;


import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.menu.entity.Menu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper{
    List<Menu> getAuthMenu(String username);

    Menu getById(String menuid);

    List<Menu> getAll();

    int deleteByUrl(String url);

    int deleteById(String id);

    Menu getByUrlAndName(String url, String name);

    int deleteByParentId(String id);

    int updateById(Menu menu);

    List<Menu> getMenuByRoleId(String id);

    List<Menu> getAllFather();

    int insert(@Param("role_id") String role_id, @Param("frontend_menu_id") String frontend_menu_id);

    int deleteAuthByRoleId(String role_id);

    List<Menu> getByParentId(String parent_id);

    int addMenu(Menu menu);

}
