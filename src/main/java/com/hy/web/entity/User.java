/**
 * BUser.java
 * Copyright(C) 20xx-2016 xxxxxx公司
 * All rights reserved.
 * --------------------------------------------
 * 2016-03-23 16:22:54 Created by xxxx
 */
package com.hy.web.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户表
 * @author xxx
 * @version x.x 
 * @time 2016-03-23 16:22:54
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements Serializable{

    private static final long serialVersionUID = 1L;

    //编号
    private Integer id;
    //登录名
    private String loginName;
    //密码
    private String password;
    //姓名
    private String name;
    //邮箱
    private String email;
    //电话
    private String phone;
    //手机
    private String mobile;
    //最后登陆IP
    private String loginIp;
    //最后登陆时间
    private Date loginDate;
    //是否可登录
    private String loginFlag;
    //创建者
    private String createBy;
    //创建时间
  //  @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;
    //更新者
    private String updateBy;
    //更新时间
    private Date updateDate;
    //备注信息
    private String remarks;
    //删除标记
    private String delFlag;
    //用户头像
    private String picImg;
}