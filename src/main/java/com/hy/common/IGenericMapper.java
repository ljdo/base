package com.hy.common;

import java.io.Serializable;
import java.util.List;

/**
 * Created by 2507868527@qq.com on 2016/3/24 14:50 .
 */
public interface IGenericMapper<T,ID extends Serializable> {
    /**
     * 新增
     * @param t 对象
     */
    int insert(T t);

    /**
     * 批量新增
     * @param ts 对象集合
     */
    int batchInsert(List<T> ts);

    /**
     * 更新
     * @param t 对象
     */
    int update(T t);

    /**
     * 删除
     * @param id 主键
     */
    int delete(ID id);

    /**
     * 批量删除
     * @param ids 主键集合
     */
    int batchDelete(List<ID> ids);

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
}
