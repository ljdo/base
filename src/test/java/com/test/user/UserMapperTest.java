package com.test.user;

import com.hy.web.dao.UserMapper;
import com.hy.web.entity.User;
import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import javax.annotation.Resource;
import java.util.List;
import static java.lang.System.out;

/**
 * Created by 2507868527@qq.com on 2016/3/23 17:10 .
 */
@ContextConfiguration(locations = {"classpath:spring-core.xml"})
public class UserMapperTest extends AbstractJUnit4SpringContextTests{


    @Resource
    public UserMapper userMapper;

    @Test
    public void test1(){
        List<User> user =  userMapper.selectAll(new User());
        out.println(user.toString());
    }
}
