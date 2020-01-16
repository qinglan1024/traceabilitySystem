package com.jucon.mapper;

import com.jucon.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface UserMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(User user);

    int insertSelective(User user);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User user);

    List<User> selectUsersByCondition(Map<String, Object> map);

    List<User> selectAllUser();
}