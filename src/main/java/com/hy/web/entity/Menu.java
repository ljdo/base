/**
 * BMenu.java
 * Copyright(C) 20xx-2016 xxxxxx公司
 * All rights reserved.
 * --------------------------------------------
 * 2016-04-13 15:00:25 Created by xxxx
 */
package com.hy.web.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.StringUtils;

import java.io.Serializable;
import java.util.Date;

/**
 * 菜单表
 * @author xxx
 * @time 2016-04-13 15:00:25
 */
@Data
@AllArgsConstructor
public class Menu implements Serializable{

    private static final long serialVersionUID = 5996304656246872203L;
    public static final Integer ROOT_ID = 0;//根节点
    /**
     * 删除标记 - 正常
     */
    public static final String DEL_FLAG_NORMAL = "0";
    /**
     * 删除标记 - 删除
     */
    public static final String DEL_FLAG_DELETE = "1";

    //编号
    private Integer id;
    //父级编号
    private Integer parentId;
    //所有父级编号
    private String parentIds;
    //名称
    private String name;
    //排序
    private Integer sort;
    //链接
    private String href;
    //目标
    private String target;
    //图标
    private String icon;
    //是否在菜单中显示
    private String isShow;
    //权限标识
    private String permission;
    //创建者
    private String createBy;
    //创建时间
    private Date createDate;
    //更新者
    private String updateBy;
    //更新时间
    private Date updateDate;
    //备注信息
    private String remarks;
    //删除标记
    private String delFlag;

    private Menu parent;//父级对象

    public Menu() {
        super();
        this.sort = 10;
        this.isShow = "1";
    }

    /**
     * 获取父级对象id
     * @return
     */
    public Integer getParentId(){
        Integer result = null;
        if(parent != null){
             result  = parent.getId();
        }
        return result != null ? result : 0;
    }

}