package com.hy.web.service.impl;

import com.hy.common.AbstractGenericService;
import com.hy.web.dao.MenuMapper;
import com.hy.web.entity.Menu;
import com.hy.web.service.IMenuService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by ljdo on 2016/4/13.
 */
@Service
public class MenuService extends AbstractGenericService<Menu,Integer> implements IMenuService {

    private static final Logger log = LoggerFactory.getLogger(MenuService.class);

    private MenuMapper menuMapper;
    @Resource
    public void setMenuMapper(MenuMapper menuMapper) {
        this.menuMapper = menuMapper;
        super.setMapper(menuMapper);
    }
}
