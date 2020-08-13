package com.neusoft.bsp.controller;

import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.role.entity.Role;
import com.neusoft.bsp.role.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    RoleService roleService;

    @PostMapping("/getAll")
    public BaseModelJson<List<Role>> getAll()
    {
        BaseModelJson<List<Role>> result = new BaseModelJson();
        result.code = 200;
        result.data = roleService.getAll();
        return result;
    }



}
