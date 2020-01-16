package com.jucon.service.impl;

import com.jucon.mapper.UserMapper;
import com.jucon.model.User;
import com.jucon.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    public int insert(User user) {
        return 0;
    }

    public int insertSelective(User user) {
        return 0;
    }

    public User selectByPrimaryKey(Integer id) {
        return null;
    }

    public int updateByPrimaryKeySelective(User user) {
        return 0;
    }

    public int updateByPrimaryKey(User user) {
        return 0;
    }

    public List<User> selectUsersByCondition(Map<String, Object> map) {

        return userMapper.selectUsersByCondition(map);
    }

    public List<User> selectAllUser() {
        return userMapper.selectAllUser();
    }
}
