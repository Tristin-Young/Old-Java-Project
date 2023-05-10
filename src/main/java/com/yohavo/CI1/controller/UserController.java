package com.yohavo.CI1.controller;

import com.yohavo.CI1.dao.GiveawaystructDao;
import com.yohavo.CI1.dao.UserDao;
import com.yohavo.CI1.entity.Giveawaystruct;
import com.yohavo.CI1.entity.User;
import com.yohavo.CI1.form.UserForm;
import com.yohavo.CI1.mapper.UserMapper;
import com.yohavo.CI1.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;


@Controller
public class UserController {

    User connectedUser;
    List<Giveawaystruct> openGiveaways;

    @Autowired
    UserDao userDao;

    @Autowired
    GiveawaystructDao giveawaystructDao;

    @Autowired
    UserService userService;


    @ModelAttribute
    public void init(Authentication authentication, HttpServletRequest request){
        connectedUser = (User) request.getSession().getAttribute("connectedUser");
        if (connectedUser == null) {
            Object oauthUser = authentication.getPrincipal();
            String email = StringUtils.substringBetween(oauthUser.toString(), "email=", "}");
            connectedUser = userDao.findByUsername(email);
            request.getSession().setAttribute("connectedUser", connectedUser);
        }
    }

    @GetMapping("/extra-settings")
    public String extra(@ModelAttribute UserForm user){
        return "extra-settings";
    }

    @RequestMapping(value="/extraSettings" ,method= RequestMethod.POST)
    public String extraSettings(@Valid @ModelAttribute ("user") UserForm user, BindingResult result){
        if(result.hasErrors()){
            System.out.println("Error. Missing value");
            return "extra-settings";
        }
        if(connectedUser != null){
            UserMapper.updateUser(connectedUser, user);
            connectedUser.setIsEnabled(true);
            openGiveaways = giveawaystructDao.findByClosedFalse();
            for(Giveawaystruct g:openGiveaways){
                g.getUsers().add(connectedUser);
            }
            userDao.save(connectedUser);
        }
        return "redirect:/index";
    }
}
