package com.hy.web.core.utils;


import com.hy.web.entity.Menu;

import java.util.List;

/**
 * 菜单工具类
 */
public class MenuUtil {
    /**
     * 对菜单项排序
     * @param returnList 返回菜单列表
     * @param menuList 所有菜单列表
     * @param parentId 父id
     * @param cascade 是否排序
     */
    public static void sortMenuList(List<Menu> returnList ,List<Menu> menuList , Integer parentId,boolean cascade){
        Integer length = menuList.size();
        for(int i = 0;i<length;i++){
            Menu menu = menuList.get(i);
            if(menu.getParentId() != null && menu.getParent().getId()!=null && menu.getParent().getId() == parentId){
                returnList.add(menu);
                if(cascade){
                    for (Menu child : menuList){
                         if(child.getParentId() != null && child.getParent().getId() != null && child.getParent().getId() == menu.getId()){
                             //做递归
                             sortMenuList(returnList,menuList, menu.getId(),true);
                             break;
                         }
                    }
                }
            }
        }

    }

}
