package com.hy.common;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.lang3.StringUtils;

/**
 * 分页参数类
 */
@Data
@NoArgsConstructor
public class Page {

    private Integer pageNum=0;//页码
    private Integer pageSize=15;//每页大小
    private String orderBy;//排序的字符串


    public Page(Integer pageNum,Integer pageSize,String orderBy){
        this.pageNum = ( pageNum / pageSize ) + 1;
        this.pageSize = pageSize;
        this.orderBy = orderBy;
    }
}
