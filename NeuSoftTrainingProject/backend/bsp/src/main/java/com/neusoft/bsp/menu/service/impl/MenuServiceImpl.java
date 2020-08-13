package com.neusoft.bsp.menu.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neusoft.bsp.menu.entity.Menu;
import com.neusoft.bsp.menu.mapper.MenuMapper;
import com.neusoft.bsp.menu.service.MenuService;
import com.neusoft.bsp.user.entity.User;
import com.neusoft.bsp.user.mapper.UserMapper;
import com.neusoft.bsp.user.service.UserService;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("menuService")
public class MenuServiceImpl implements MenuService {

    @Autowired
    MenuMapper menuMapper;

    @Override
    public List<Menu> getAll() {

        List<Menu> menus = menuMapper.getAll();

        return addChildMenus(menus);
    }

    // 根据username获取权限菜单
    @Override
    public List<Menu> getAuthMenu(String username) {

        List<Menu> menus = menuMapper.getAuthMenu(username);
        return addChildMenus(menus);
    }

    @Override
    public int deleteById(String id) {
        Menu todelete = menuMapper.getById(id);
        // 如果是父菜单
        if (todelete.getParent_id() == null){
            String fid = todelete.getMenu_id();
            menuMapper.deleteByParentId(fid);
        }
        return menuMapper.deleteById(id);
    }

    @Override
    public Menu getById(String menuid) {
        return menuMapper.getById(menuid);
    }

    // 连同子菜单一起删除
    @Override
    public int deleteByUrlAndName(String url, String name) {
        Menu todelete = menuMapper.getByUrlAndName(url, name);
        // System.out.println("name" + name);
        // 如果是父菜单
        if (todelete.getParent_id() == null){
            String id = todelete.getMenu_id();
            menuMapper.deleteByParentId(id);
        }
        return menuMapper.deleteByUrl(url);
    }

    // 将子菜单加入到父菜单中
    public List<Menu> addChildMenus(List<Menu> menus){
        List<Menu> mm = new ArrayList<>();
        for (Menu m : menus){
            if (m.getMenu_url().startsWith("#")){
                mm.add(m);
            }
        }
        // System.out.println(mm);
        for (int k=0;k<menus.size();k++){
            Menu m = menus.get(k);
            System.out.println(m.getMenu_url());
            if (!m.getMenu_url().startsWith("#")){
                for (int i=0; i<mm.size(); i++){
                    if (m.getParent_id().equals(mm.get(i).getMenu_id())){
                        mm.get(i).addChild(m);
                    }
                }
            }
        }
        // System.out.println(mm);
        return mm;
    }

    @Override
    public List<Menu> getAllFather() {
        return menuMapper.getAllFather();
    }

    @Override
    public List<Menu> getMenuByRoleId(String id) {
        return menuMapper.getMenuByRoleId(id);
    }

    @Override
    public int updateById(Menu menu) {
        return menuMapper.updateById(menu);
    }

    // 连同子菜单一块插入
    @Override
    public int insertAuthByRoleId(String role_id, List<String> menu_ids) {
        for (String menu_id:menu_ids){
            List<Menu> childMenus = menuMapper.getByParentId(menu_id);
            for(Menu childMenu: childMenus){
                menuMapper.insert(role_id, childMenu.getMenu_id());
            }
            menuMapper.insert(role_id, menu_id);
        }
        return 1;
    }

    @Override
    public int addMenu(Menu menu) {
        //如果为父级菜单，资源路径自动分配为#
        if(menu.getMenu_url() == null){
            menu.setMenu_url("#");
        }
        return menuMapper.addMenu(menu);
    }

    @Override
    public int deleteByRoleId(String role_id) {
        return menuMapper.deleteAuthByRoleId(role_id);
    }
}
