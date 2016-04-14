package com.hy.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by ljdo on 2016/4/14.
 */
@Controller
@RequestMapping("/icon")
public class IconsController {

    @RequestMapping("/index")
    public ModelAndView icon(){
        return new ModelAndView("icon/index");
    }
}
