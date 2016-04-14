package com.hy.common;

import com.github.pagehelper.PageInfo;

import java.io.Serializable;
import java.util.List;

/**
 * Created by 2507868527@qq.com on 2016/3/24 15:20 .
 */
public interface IGenericService<T,ID extends Serializable> {

    void setMapper(IGenericMapper<T,ID> iGenericMapper);
    /**
     * 新增
     * @param t 对象
     */
    boolean insert(T t);

    /**
     * 批量新增
     * @param ts 对象集合
     */
    boolean batchInsert(List<T> ts);

    /**
     * 更新
     * @param t 对象
     */
    boolean update(T t);

    /**
     * 删除
     * @param id 主键
     */
    boolean delete(ID id);

    /**
     * 批量删除
     * @param ids 主键集合
     */
    boolean batchDelete(List<ID> ids);

    /**
     * 获取记录（单条）
     * @param id 唯一主键
     * @return
     */
    T selectOne(ID id);

    /**
     * 获取多条
     * @param t 对象
     * @return
     */
    List<T> selectAll(T t);

    /**
     * 分页查询
     * @param t 对象
     * @return
     */
    PageInfo<T> selectWithPage(T t,Page page);
}
