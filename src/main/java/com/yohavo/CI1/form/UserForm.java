package com.yohavo.CI1.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class UserForm {
    @NotNull
    private Integer age;
    @NotBlank
    private String zip;
    @NotBlank
    private String gender;
    @NotBlank
    private String name;
    @NotNull
    private Boolean tc;


    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getTc() { return tc; }

    public void  setTc(Boolean tc) {this.tc = tc;}


}
