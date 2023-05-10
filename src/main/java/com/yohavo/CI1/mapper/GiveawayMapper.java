package com.yohavo.CI1.mapper;

import com.yohavo.CI1.dao.UserDao;
import com.yohavo.CI1.entity.Giveawaystruct;
import com.yohavo.CI1.entity.User;
import com.yohavo.CI1.form.GiveawayForm;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


public class GiveawayMapper {

    public static Giveawaystruct toEntity(GiveawayForm form) {

        Giveawaystruct giveaway = new Giveawaystruct();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd-hh:mm:ss z");

        if (form.getStartDate() != null && !form.getStartDate().isEmpty()) {
            try {
                Date startDate = formatter.parse(form.getStartDate() + "-00:00:00 PST");
                giveaway.setStartDate(startDate);
            } catch (Exception e) {
                e.getStackTrace();
            }
        }

        if (form.getEndDate() != null && !form.getEndDate().isEmpty()) {
            try {
                Date endDate = formatter.parse(form.getEndDate() + "-23:59:59 PST");
                giveaway.setEndDate(endDate);
            } catch (Exception e) {
                e.getStackTrace();
            }
        }

        if (form.getEndDate() != null && !form.getEndDate().isEmpty()) {
            if (giveaway.getEndDate().before(giveaway.getStartDate()) || giveaway.getStartDate() == null) {
                System.out.println("Invalid dates!");
                return null;
            }
        }

        if (giveaway.getStartDate() == null) {
            return null;
        }
        if (giveaway.getEndDate() == null) {
            return null;
        } else {
//            if(giveaway.getEndDate() == null){
//
//                Calendar calendar = Calendar.getInstance();
//                calendar.setTime(giveaway.getStartDate());
//                calendar.add(Calendar.DATE, giveaway.getDuration());
//
//                giveaway.setEndDate(calendar.getTime());
//
//            }
//            else{
//                Calendar calendar = Calendar.getInstance();
//                calendar.setTime(giveaway.getStartDate());
////                Duration d = Duration.between(giveaway.getStartDate(), giveaway.getEndDate());
////                giveaway.setDuration();
//
//            }
        }

        giveaway.setClosed(form.getClosed());
        giveaway.setPrize(form.getPrize());
        giveaway.setName(form.getName());

        System.out.println("Added successfully!");
        return giveaway;
    }
}

