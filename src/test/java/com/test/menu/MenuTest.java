package com.test.menu;

import com.hy.web.entity.Menu;
import com.hy.web.service.IMenuService;
import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ljdo on 2016/4/13.
 */
@ContextConfiguration(locations = {"classpath:spring-core.xml"})
public class MenuTest extends AbstractJUnit4SpringContextTests {

    @Resource
    private IMenuService menuService;

    @Test
    public void test1(){
       List<Menu> list = menuService.selectAll(new Menu());
        System.out.println(list.size());
    }
}
