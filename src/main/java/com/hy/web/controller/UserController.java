package com.hy.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Maps;
import com.hy.common.GenericController;
import com.hy.common.Page;
import com.hy.web.entity.User;
import com.hy.web.service.IUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.converter.json.Jackson2ObjectMapperFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.logging.SimpleFormatter;

/**
 * Created by 2507868527@qq.com on 2016/3/23 11:13 .
 */
@Controller
@RequestMapping("/user")
public class UserController extends GenericController {
    @Resource
    private IUserService userService;

    @RequestMapping("/editor1")
    public ModelAndView editor1(){
        ModelAndView model = new ModelAndView("user/editor1");
        return model;
    }

    @RequestMapping("/datatables2")
    public ModelAndView datatables2(){
        ModelAndView model = new ModelAndView("user/datatables2");
        return model;
    }

    @RequestMapping("/datatables1")
    public ModelAndView datatables1(){
        ModelAndView model = new ModelAndView("user/datatables1");
        return model;
    }

    @RequestMapping("/list")
    @ResponseBody
    public String list(Integer start, Integer length,Integer displayStart ,String draw,HttpServletRequest request){
        JSONObject json = new JSONObject();
        PageInfo<User> page = userService.selectWithPage(new User(),new Page(start,length,null));
        json.put("recordsTotal", page.getTotal());
        json.put("recordsFiltered",page.getTotal());
        json.put("data", page.getList());
        json.put("draw",draw);
        return json.toJSONString();
    }

    @RequestMapping("/update")
    public boolean update(User user){
           try {
               userService.update(user);
           }catch (Exception e){
               return false;
           }
        return true;
    }

    @RequestMapping("/uploadImg")
    @ResponseBody
    public Map<String,String> uploadImg(MultipartFile file,HttpServletRequest request){
        System.out.println("开始");
        String path = request.getSession().getServletContext().getRealPath("static/upload/imgs");
        String fileName = file.getOriginalFilename();
        String ext = StringUtils.substring(fileName,StringUtils.lastIndexOf(fileName,"."));
        String newName = UUID.randomUUID() + ext;
        System.out.println(newName);
        File targetFile = new File(path, newName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Map<String,String> result = Maps.newHashMap();
        result.put("link",request.getSession().getServletContext().getContextPath()+"/static/upload/imgs/"+newName);
        return result;
    }

    @RequestMapping("/uploadFile")
    @ResponseBody
    public Map<String,String> uploadFile(MultipartFile file,HttpServletRequest request){
        System.out.println("开始");
        String path = request.getSession().getServletContext().getRealPath("static/upload/files");
        String fileName = file.getOriginalFilename();
        String ext = StringUtils.substring(fileName,StringUtils.lastIndexOf(fileName,"."));
        String newName = UUID.randomUUID() + ext;
        System.out.println(newName);
        File targetFile = new File(path, newName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Map<String,String> result = Maps.newHashMap();
        result.put("link",request.getSession().getServletContext().getContextPath()+"/static/upload/files/"+newName);
        return result;
    }


}
