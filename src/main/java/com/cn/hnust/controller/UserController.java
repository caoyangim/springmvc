package com.cn.hnust.controller;

import com.alibaba.fastjson.JSON;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private IUserService userService;
    private static Logger logger = Logger.getLogger(UserController.class);

    @RequestMapping("/showUser")
    public String toIndex(HttpServletRequest request, Model model) {
        logger.info("request:"+request.getParameter("id"));
        if (request.getParameter("id") == null){
            List<User> userList = this.userService.getUser();
            logger.info(JSON.toJSONString(userList));
            model.addAttribute("userList", userList);
            return "showUsers";
        }else {
            int userId = Integer.parseInt(request.getParameter("id"));
            User user = this.userService.getUserById(userId);
            model.addAttribute("user", user);
            return "showUser";
        }
    }
}
