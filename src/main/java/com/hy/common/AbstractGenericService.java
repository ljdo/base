package com.hy.common;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;

import java.io.Serializable;
import java.util.List;

/**
 * Created by 2507868527@qq.com on 2016/3/24 15:12 .
 */
public abstract class AbstractGenericService<T,ID extends Serializable> implements IGenericService<T,ID>{

    private IGenericMapper<T,ID> iGenericMapper;

    @Override
    public void setMapper(IGenericMapper<T,ID> iGenericMapper) {
        this.iGenericMapper = iGenericMapper;
    }

    @Override
    public boolean insert(T t) {
        return retBool(iGenericMapper.insert(t));
    }

    @Override
    public boolean batchInsert(List<T> ts) {
        return retBool(iGenericMapper.batchInsert(ts));
    }

    @Override
    public boolean update(T t) {
        return retBool(iGenericMapper.update(t));
    }

    @Override
    public boolean delete(ID id) {
        return retBool(iGenericMapper.delete(id));
    }

    @Override
    public boolean batchDelete(List<ID> ids) {
        return retBool(iGenericMapper.batchDelete(ids));
    }

    @Override
    public T selectOne(ID id) {
        return iGenericMapper.selectOne(id);
    }

    @Override
    public List<T> selectAll(T t) {
        return iGenericMapper.selectAll(t);
    }

    @Override
    public PageInfo<T> selectWithPage(T t,Page page) {
        //判断是否有排序
        if(page.getOrderBy() != null && !"".equals(page.getOrderBy())){
            PageHelper.orderBy(page.getOrderBy());
        }
        //设置页码和大小
        PageHelper.startPage(page.getPageNum(),page.getPageSize());
        List<T> list = this.selectAll(t);
        return new PageInfo<T>(list);
    }

    /**
     * 判断数据库操作是否成功
     * @param result 数据库操作返回影响条数
     * @return boolean
     */
    protected boolean retBool( int result ) {
        return (result >= 1) ? true : false;
    }
}
