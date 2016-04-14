package com.test.user;

import com.github.pagehelper.PageInfo;
import com.hy.common.Page;
import com.hy.web.entity.User;
import com.hy.web.service.IUserService;
import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 2507868527@qq.com on 2016/3/23 17:10 .
 */
@ContextConfiguration(locations = {"classpath:spring-core.xml"})
public class UserServiceTest extends AbstractJUnit4SpringContextTests{


    @Resource
    private IUserService iUserService;

    @Test
    public void test1(){
        //List<User> user =  iUserService.selectAll(new User());
        PageInfo<User> page = iUserService.selectWithPage(new User(),new Page(1,10,null));
        List<User> list = page.getList();

        System.out.println(list.toString());


        List<User> user = new ArrayList<User>();
        User user1 = new User();
        user1.setId(1);
        user.add(user1);
        System.out.println(user.toString());
    }
}
