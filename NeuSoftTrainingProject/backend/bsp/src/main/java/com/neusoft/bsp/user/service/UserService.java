package com.neusoft.bsp.user.service;

import com.github.pagehelper.PageInfo;
import com.neusoft.bsp.user.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserService {
    int insert(User user);

    int update(User user);

    int delete(String userid);

    User getById(String userid);

    User getByName(String username);

    List<String> getRolesByName(String username);

    List<User> getAll();

    List<User> getAllByFilter(Map<String, Object> map);

    PageInfo<User> getAllByFilter(Integer pageNum, Integer pageSize);

    PageInfo<User> getAllByFilter(Integer pageNum, Integer pageSize, Map<String, Object> map);

    /**
     * 个性化验证登录
     * @param username 账号
     * @param rawPassword 原始密码
     * @return
     */
    boolean checkLogin(String username, String rawPassword) throws Exception;

    int getBuyerIdByUserName(String username);

    int updateBuyerId(String username, int man_buyer_id);


}
