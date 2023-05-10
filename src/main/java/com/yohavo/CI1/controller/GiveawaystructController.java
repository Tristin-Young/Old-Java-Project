package com.yohavo.CI1.controller;

import com.yohavo.CI1.dao.GiveawaystructDao;
import com.yohavo.CI1.dao.UserDao;
import com.yohavo.CI1.entity.Giveawaystruct;
import com.yohavo.CI1.entity.User;
import com.yohavo.CI1.form.GiveawayForm;
import com.yohavo.CI1.mapper.GiveawayMapper;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.FastDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Controller
public class GiveawaystructController {

    @Autowired
    GiveawaystructDao giveawaystructDao;

    @Autowired
    UserDao userDao;

    List<User> usersToAddNewGiveaway;

    @RequestMapping(value = "/giveawaystruct", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView giveawaystruct(@ModelAttribute GiveawayForm giveawaystruct) {
        System.out.println("In GiveawayStruct controller");
        //Create Giv. Object
        if (GiveawayMapper.toEntity(giveawaystruct) != null) {
            usersToAddNewGiveaway = userDao.findAllUsers();

            giveawaystructDao.save(GiveawayMapper.toEntity(giveawaystruct));
            List<Giveawaystruct> allGiveaways = giveawaystructDao.findAll();
            List<Giveawaystruct> openGiveaways = giveawaystructDao.findByClosedFalse();


            Giveawaystruct lastGiveaway = openGiveaways.get(openGiveaways.size() - 1);
            giveawaystruct.setIdGiveawayStruct(lastGiveaway.getIdGiveawayStruct());

            Giveawaystruct g = giveawaystructDao.getGiveawaystructById(giveawaystruct.getIdGiveawayStruct());
            g.setUsers(usersToAddNewGiveaway);
            System.out.println("g.setUsers OK");
            giveawaystructDao.save(g);
        }
        return new ModelAndView("redirect:/current-orders");
    }

    @GetMapping("/new-orders")
    public String neworders(Model model, @ModelAttribute GiveawayForm giveawaystruct) {
        model.addAttribute("giveawaystruct", new GiveawayForm());


        return "new-orders";
    }

    @GetMapping("/goToEntry")
    public String goToEntry(@RequestParam Integer giveawayId, Authentication authentication) {
        Giveawaystruct giveaway = giveawaystructDao.findById(giveawayId).get();
        Instant now = Instant.now();
        if (now.isBefore(giveaway.getEndDate().toInstant())) {
            Object oauthUser = authentication.getPrincipal();
            String email = StringUtils.substringBetween(oauthUser.toString(), "email=", "}");
            User user = userDao.findByUsername(email);
            giveaway.getUsers().add(user);
            giveawaystructDao.save(giveaway);
            return "redirect:/index";
        } else {
            return "redirect:/index";
        }
    }

    @GetMapping("/pickWinner")
    public String pickWinner() {
        List<Giveawaystruct> openGiveaways = giveawaystructDao.findByClosedFalse();
        Instant now = Instant.now();
        for (Giveawaystruct giveawayStruct : openGiveaways) {

            if (now.isAfter(giveawayStruct.getEndDate().toInstant())) {
                giveawayStruct.setClosed(true);
                giveawaystructDao.save(giveawayStruct);
            }
        }
        Map<Integer, User> hashmap = new HashMap<>();
        int i = 0;
        List<Giveawaystruct> closedGiveaways = giveawaystructDao.findByClosedTrue();
        for (Giveawaystruct giveawayStruct : closedGiveaways) {
            for (User user : giveawayStruct.getUsers()) {
                hashmap.put(i++, user);
            }
            Random r = new Random();
            int low = 0;
            int high = i;
            int result = r.nextInt(high - low) + low;
            User winner = hashmap.get(result);
            giveawayStruct.setWinner(winner);
            giveawaystructDao.save(giveawayStruct);
        }
        return "redirect:/past-orders";
    }

    @RequestMapping(value = "/current-orders", method = RequestMethod.GET)
    public String currentOrders(Model model) {
        List<Giveawaystruct> openGiveaways = giveawaystructDao.findByClosedFalse();
        model.addAttribute("openGiveawaysList", openGiveaways);
//        System.out.print(openGiveaways);
        return "current-orders";
    }

    @RequestMapping(value = "/past-orders", method = RequestMethod.GET)
    public String pastOrders(Model model) {
        List<Giveawaystruct> closedGiveaways = giveawaystructDao.findByClosedTrue();
        model.addAttribute("closedGiveawaysList", closedGiveaways);
        return "past-orders";
    }
}




