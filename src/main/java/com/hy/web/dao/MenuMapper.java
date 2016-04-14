/**
 * BMenuMapper.java
 * Copyright(C) 20xx-2016 xxxxxx公司
 * All rights reserved.
 * --------------------------------------------
 * 2016-04-13 15:00:25 Created by xxxx
 */
package com.hy.web.dao;


import com.hy.common.IGenericMapper;
import com.hy.web.entity.Menu;
import org.springframework.stereotype.Repository;

@Repository
public interface MenuMapper extends IGenericMapper<Menu,Integer> {
}