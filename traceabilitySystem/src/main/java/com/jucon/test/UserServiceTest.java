package com.jucon.test;

import com.jucon.model.User;
import com.jucon.service.UserService;
import com.sun.org.apache.xpath.internal.operations.String;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class UserServiceTest {

    @Resource
    private UserService userService;

    @Test
    public void query01(){
        List<User> users = userService.selectAllUser();
        for(User user :users){
            System.out.println(user);
        }
    }

    @Test
    public void query02(){
        Map<java.lang.String, Object> map = new HashMap<java.lang.String, Object>();
        map.put("userId", "admin");
        List<User> users = userService.selectUsersByCondition(map);
        for (User user :users){
            System.out.println(user);
        }
    }
}
