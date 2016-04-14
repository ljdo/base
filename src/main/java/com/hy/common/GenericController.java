package com.hy.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;


/**
 * Created by 2507868527@qq.com on 2016/3/23 11:46 .
 */
public class GenericController {
    /**
     * 日志对象
     */
    protected Logger logger = LoggerFactory.getLogger(this.getClass());

    @ExceptionHandler({ Exception.class})
    public String errorException() {
        return "common/error/404";
    }

    /**
     * 重定向至地址 url
     * @param url 请求地址
     * @return
     */
    protected String redirectTo( String url ) {
        StringBuffer rto = new StringBuffer("redirect:");
        rto.append(url);
        return rto.toString();
    }
}
