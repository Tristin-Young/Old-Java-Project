/*
package com.yohavo.CI1.controller;

import com.yohavo.CI1.dao.EntriesDao;
import com.yohavo.CI1.entity.Entries;
import com.yohavo.CI1.mapper.GiveawayMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EntriesController {

    @RequestMapping(value="/entries" ,method= RequestMethod.POST)
    @ResponseBody
    public ModelAndView Entries(@ModelAttribute Entries entry){
        System.out.println("In Entries controller");
        //Create Giv. Object



        //EntriesDao.save(GiveawayMapper.toEntity(giveawaystruct));

        return new ModelAndView("index2");
    }
}
*/