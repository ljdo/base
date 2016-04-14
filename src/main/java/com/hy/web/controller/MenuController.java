package com.hy.web.controller;

import com.google.common.collect.Lists;
import com.hy.common.GenericController;
import com.hy.web.core.utils.MenuUtil;
import com.hy.web.entity.Menu;
import com.hy.web.service.IMenuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ljdo on 2016/4/13.
 */
@Controller
@RequestMapping("/menu")
public class MenuController extends GenericController {

    @Resource
    private IMenuService menuService;

    /**
     * 获取菜单列表
     * @return
     */
    @RequestMapping(value = {"/list",""})
    public ModelAndView queryList(){
        ModelAndView model = new ModelAndView();
        List<Menu> returnList = Lists.newArrayList();
        List<Menu> menuList = menuService.selectAll(new Menu());
        MenuUtil.sortMenuList(returnList, menuList, Menu.ROOT_ID, true);
        model.addObject("list", returnList);
        model.setViewName("menu/index");
        return model;
    }

}
