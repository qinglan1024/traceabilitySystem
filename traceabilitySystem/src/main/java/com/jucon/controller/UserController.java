package com.jucon.controller;

import com.jucon.model.User;
import com.jucon.service.UserService;
import com.jucon.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sun.security.krb5.internal.PAData;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path = "/user")
public class UserController {

    @Autowired
    public UserService userService;

    @RequestMapping(path = "/login")
    @ResponseBody
    public ModelAndView login(User user, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("userId", user.getUserId());
        map.put("password", user.getPassword());
        List<User> userList = userService.selectUsersByCondition(map);
        System.out.println(userList.size());
        if(userList.size() == 0){
            modelAndView.addObject("data", "用户名或密码错误！");
        }
        return modelAndView;
    }
}
