package com.hwua.ssm.controller;

import com.hwua.ssm.po.Type;
import com.hwua.ssm.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/type")
public class TypeController {
    @Autowired
    private TypeService typeService;

    public String
}
