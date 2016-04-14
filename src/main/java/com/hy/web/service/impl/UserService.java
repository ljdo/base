package com.hy.web.service.impl;

import com.hy.common.AbstractGenericService;
import com.hy.web.dao.UserMapper;
import com.hy.web.entity.User;
import com.hy.web.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by 2507868527@qq.com on 2016/3/23 18:20 .
 */
@Service
public class UserService extends AbstractGenericService<User,Integer> implements IUserService {

    private static final Logger log = LoggerFactory.getLogger(UserService.class);

    private UserMapper userMapper;
    @Resource
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
        super.setMapper(userMapper);
    }
}
