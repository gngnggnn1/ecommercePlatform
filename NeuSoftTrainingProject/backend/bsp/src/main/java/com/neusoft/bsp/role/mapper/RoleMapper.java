package com.neusoft.bsp.role.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.role.entity.Role;
import com.neusoft.bsp.user.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleMapper extends BaseMapper<String, Role> {
    List<Role> getAll();
}
