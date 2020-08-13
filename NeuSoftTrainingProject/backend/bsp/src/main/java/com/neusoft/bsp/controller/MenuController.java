package com.neusoft.bsp.controller;

import com.github.pagehelper.PageInfo;
import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.exception.BusinessException;
import com.neusoft.bsp.common.validationGroup.DeleteGroup;
import com.neusoft.bsp.common.validationGroup.InsertGroup;
import com.neusoft.bsp.common.validationGroup.UpdateGroup;
import com.neusoft.bsp.menu.entity.Menu;
import com.neusoft.bsp.menu.service.MenuService;
import com.neusoft.bsp.role.entity.RoleMenu;
import com.neusoft.bsp.user.entity.User;
import com.neusoft.bsp.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/menu")
public class MenuController extends BaseController {

    @Autowired
    MenuService menuService;

    @PostMapping("/getAuthMenu")
    public BaseModelJson<List<Menu>> getAuthMenu(@RequestParam String username)
    {

        BaseModelJson<List<Menu>> result = new BaseModelJson();

        result.code = 200;
        result.data = menuService.getAuthMenu(username);
        return result;
    }

    @PostMapping("/getMenuByRoleId")
    public BaseModelJson<List<Menu>> getMenuByRoleId(@RequestParam String id)
    {

        BaseModelJson<List<Menu>> result = new BaseModelJson();

        result.code = 200;
        result.data = menuService.getMenuByRoleId(id);
        return result;
    }

    @PostMapping("/getAll")
    public BaseModelJson<List<Menu>> getAll()
    {

        BaseModelJson<List<Menu>> result = new BaseModelJson();

        result.code = 200;
        result.data = menuService.getAll();
        return result;
    }

    @PostMapping("/deleteByUrlAndName")
    public BaseModelJson<Integer> deleteByUrl(@RequestParam String url, @RequestParam String name){
        BaseModelJson<Integer> result = new BaseModelJson();
        result.code=200;
        result.data = menuService.deleteByUrlAndName(url, name);
        return result;
    }

    @PostMapping("/deleteById")
    public BaseModelJson<Integer> deleteById(@RequestParam String id){
        BaseModelJson<Integer> result = new BaseModelJson();
        result.code=200;
        result.data = menuService.deleteById(id);
        return result;
    }

    @PostMapping("/updateById")
    @ResponseBody
    public BaseModelJson<Integer> updateById(@RequestBody Menu menu){
        BaseModelJson<Integer> result = new BaseModelJson();
        result.code=200;
        result.data = menuService.updateById(menu);
        return result;
    }

    @PostMapping("/getAllFather")
    public BaseModelJson<List<Menu>> getAllFather(){
        BaseModelJson<List<Menu>> result = new BaseModelJson();

        result.code = 200;
        result.data = menuService.getAllFather();
        return result;
    }

    // 参数为一个数组，第一项为要更新的role_id, 之后为授权的menu_id
    @PostMapping("/updateAuth")
    public BaseModelJson<Integer> insertAuthByRoleId(@RequestBody RoleMenu roleMenu){
        System.out.println(roleMenu.getRole_id());
        BaseModelJson<Integer> result = new BaseModelJson();
        result.code = 200;
        menuService.deleteByRoleId(roleMenu.getRole_id());
        if(roleMenu.getMenu_id().size() == 0){
            result.data = 1;
        }
        else {
            result.data = menuService.insertAuthByRoleId(roleMenu.getRole_id(),roleMenu.getMenu_id());
        }
        return result;
    }

    @PostMapping("/deleteAuthByRoleId")
    public BaseModelJson<Integer> deleteAuthByRoleId(@RequestParam String role_id){
        BaseModelJson<Integer> result = new BaseModelJson();
        result.code = 200;
        result.data = menuService.deleteByRoleId(role_id);
        return result;
    }

    @PostMapping("/addMenu")
    public BaseModelJson<Integer> addMenu(@RequestBody Menu menu){
        BaseModelJson<Integer> result = new BaseModelJson();
        result.code = 200;
        result.data = menuService.addMenu(menu);
        return result;
    }

}
