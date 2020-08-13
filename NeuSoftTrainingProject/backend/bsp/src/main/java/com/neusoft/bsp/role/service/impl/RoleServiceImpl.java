package com.neusoft.bsp.role.service.impl;

import com.neusoft.bsp.role.entity.Role;
import com.neusoft.bsp.role.mapper.RoleMapper;
import com.neusoft.bsp.role.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleMapper roleMapper;

    @Override
    public List<Role> getAll() {
        return roleMapper.getAll();
    }
}
