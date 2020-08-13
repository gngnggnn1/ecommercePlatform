package com.neusoft.bsp.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.base.BaseModelJson1;
import com.neusoft.bsp.common.exception.BusinessException;
import com.neusoft.bsp.common.validationGroup.DeleteGroup;
import com.neusoft.bsp.common.validationGroup.InsertGroup;
import com.neusoft.bsp.common.validationGroup.UpdateGroup;
import com.neusoft.bsp.user.entity.User;
import com.neusoft.bsp.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    UserService userService;

    @PostMapping("/addUser")
    public BaseModel addUser(@Validated({InsertGroup.class}) @RequestBody User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            throw BusinessException.INSERT_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{user.toString()});
        } else {
            BaseModel result = new BaseModel();
             int i = userService.insert(user);
             if (i == 1) {
                 result.code = 200;
                 return result;
             }else {
                 throw BusinessException.INSERT_FAIL;
             }
        }
    }

    @PostMapping("/checkUser")
    public BaseModelJson<List<User>> checkUserForVue(@RequestBody User user) {

        Map<String, Object> map = new HashMap<>();
        map.put("username", user.getUsername());
        map.put("password", user.getPassword());
        List<User> users = userService.getAllByFilter(map);
        if (users.size() == 0) {
            throw BusinessException.USERNAME_NOT_EXISTS;
        } else {
            BaseModelJson<List<User>> result = new BaseModelJson<>();
            result.code = 200;
            result.data = users;
            return result;

        }
    }

    @PostMapping("/logout")
    public BaseModelJson<String> logout() {

            BaseModelJson result = new BaseModelJson();
            result.code = 200;
            result.data = "success";
            return result;

    }


    @GetMapping("/getInfo")
    public BaseModelJson getInfoForVue(@RequestParam String username) {
//        User u = userService.getByName(username);
        List<String> roles = userService.getRolesByName(username);
        Map<String, Object> map = new HashMap<>();
        map.put("roles", roles);
        map.put("introduction", "I am an NEUer");
        map.put("avatar","https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
        map.put("name", username);
        BaseModelJson<Map> result = new BaseModelJson();
        result.code = 200;
        result.data = map;
        System.out.println("get==========================");
        return result;


    }

        @PostMapping("/userlist")
        public BaseModelJson<PageInfo<User>> getUserList(Integer pageNum, Integer pageSize, @RequestParam(required = false) Map<String, Object> map)
        {

            BaseModelJson<PageInfo<User>> result = new BaseModelJson();
            if (pageNum == null) {
                pageNum = 1;
            }

            if (pageSize == null) {
                pageSize = 10;
            }


            result.code = 200;
            result.data = userService.getAllByFilter(pageNum, pageSize, map);

            return result;
        }

    @PostMapping("/updateUser")
    public BaseModel updateUser(@Validated({UpdateGroup.class}) @RequestBody User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            throw BusinessException.USERID_NULL_ERROR.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{user.toString()});
        } else {
            BaseModel result = new BaseModel();
            int i = userService.update(user);
            if (i == 1) {
                result.code = 200;
                return result;
            }else {
                throw BusinessException.UPDATE_FAIL;
            }
        }
    }

    @PostMapping("/deleteUser")
    public BaseModel deleteUser(@Validated({DeleteGroup.class}) @RequestBody User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            throw BusinessException.USERID_NULL_ERROR.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{user.toString()});
        } else {
            BaseModel result = new BaseModel();
            int i = userService.delete(user.getUser_id());
            if (i == 1) {
                result.code = 200;
                return result;
            }else {
                throw BusinessException.DELETE_FAIL;
            }
        }
    }

}
