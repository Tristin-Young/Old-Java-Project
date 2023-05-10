package com.yohavo.CI1.mapper;

import com.yohavo.CI1.entity.User;
import com.yohavo.CI1.form.UserForm;

public class UserMapper {
    public static void updateUser(User u, UserForm form){

        u.setZip(form.getZip());
        u.setAge(form.getAge());
        u.setName(form.getName());
        u.setGender(form.getGender());
        u.setTc(form.getTc());
    }

}
