/**
 * BUserMapper.java
 * Copyright(C) 20xx-2016 xxxxxx公司
 * All rights reserved.
 * --------------------------------------------
 * 2016-03-23 16:22:54 Created by xxxx
 */
package com.hy.web.dao;


import com.hy.common.IGenericMapper;
import com.hy.web.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper extends IGenericMapper<User,Integer> {

}