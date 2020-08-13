package com.neusoft.bsp.user.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neusoft.bsp.security.components.BCryptPasswordEncoderUtil;
import com.neusoft.bsp.user.entity.User;
import com.neusoft.bsp.user.mapper.UserMapper;
import com.neusoft.bsp.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    BCryptPasswordEncoderUtil bCryptPasswordEncoderUtil;

    @Autowired
    UserMapper userMapper;

    @Override
    public int insert(User user) {
        return userMapper.insert(user);
    }

    @Override
    public int update(User user) {
        return userMapper.update(user);
    }

    @Override
    public int delete(String userid) {
        return userMapper.delete(userid);
    }

    @Override
    public List<String> getRolesByName(String username) {
        return userMapper.getRolesByName(username);
    }

    @Override
    public User getByName(String username) {
        return userMapper.getByName(username);
    }

    @Override
    public User getById(String userid) {
        return userMapper.getById(userid);
    }

    @Override
    public List<User> getAll() {
        return userMapper.getAll();
    }

    @Override
    public List<User> getAllByFilter(Map<String, Object> map) {
        return userMapper.getAllByFilter(map);
    }

    /**
     * 个性化验证登录
     * @param username 账号
     * @param rawPassword 原始密码
     * @return
     */
    @Override
    public boolean checkLogin(String username,String rawPassword) throws Exception {
        User user = this.getByName(username);
        System.out.println("user = " + user);
        if (user == null) {
            //System.out.println("checkLogin--------->账号不存在，请重新尝试！");
            //设置友好提示
            throw  new Exception("账号不存在，请重新尝试！");
        }else {
            //加密的密码
            String encodedPassword = user.getPassword();
            //和加密后的密码进行比配
            if(!bCryptPasswordEncoderUtil.matches(rawPassword,encodedPassword)) {
                //System.out.println("checkLogin--------->密码不正确！");
                //设置友好提示
                throw new Exception("密码不正确！");
            }else{
                return  true;
            }
        }
    }

    @Override
    public PageInfo<User> getAllByFilter(Integer pageNum, Integer pageSize) {
        return this.getAllByFilter(pageNum, pageSize, new HashMap<>());
    }

    @Override
    public PageInfo<User> getAllByFilter(Integer pageNum, Integer pageSize, Map<String, Object> map) {
        PageHelper.startPage(pageNum, pageSize, true);
        List<User> users = userMapper.getAllByFilter(map);

        return new PageInfo<>(users);
    }

    @Override
    public int getBuyerIdByUserName(String username) {
        return userMapper.getBuyerIdByUserName(username);
    }

    @Override
    public int updateBuyerId(String username, int man_buyer_id) {
        return userMapper.updateBuyerId(username, man_buyer_id);
    }
}
