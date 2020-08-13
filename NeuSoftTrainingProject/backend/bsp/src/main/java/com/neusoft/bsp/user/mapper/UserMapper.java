package com.neusoft.bsp.user.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.user.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface UserMapper extends BaseMapper<String, User> {

//    List<User> getAll();

    User getByName(String username);

    List<String> getRolesByName(String username);

//    List<User> getAllByFilter(Map<String, Object> map);

    int getBuyerIdByUserName(String username);

    int updateBuyerId(@Param("username") String username, @Param("man_buyer_id") int man_buyer_id);

}
