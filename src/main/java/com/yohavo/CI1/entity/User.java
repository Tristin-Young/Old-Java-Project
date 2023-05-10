package com.yohavo.CI1.entity;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.ManyToMany;
import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;


@Table(name = "users")
@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "userid")
    private Integer id;

    @Column(name = "email")
    private String username;

    private String name;

    @Column(name = "verified")
    private Boolean isEnabled;

    private Integer age;

    private Boolean admin;

    private String zip;

    private String gender;

    @Column(name = "tc")
    private Boolean tc;

    @ManyToMany(mappedBy = "users")
    List <Giveawaystruct> giveawaystruct;

    public Integer getAge() { return age; }

    public String getGender() { return gender; }

    public Boolean getIsEnabled() { return isEnabled; }

    public Integer getId() { return id; }

    public Boolean getAdmin() { return admin; }

    public String getName() {return name;}

    public String getUsername() {return username;}

    public String getZip() {return zip;}

    public Boolean getIsEnabled(String aTrue) { return isEnabled;}

    public void setGender(String gender) {this.gender = gender;}

    public void setName(String name) {this.name = name;}

    public void setAge(Integer age) {this.age = age;}

    public void setAdmin(Boolean admin) {
        this.admin = admin;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setIsEnabled(Boolean isEnabled) { this.isEnabled = isEnabled; }

    public void setGiveawaystruct(List<Giveawaystruct> giveawaystruct) {
        this.giveawaystruct = giveawaystruct;
    }

    public List<Giveawaystruct> getGiveawaystruct() {
        return giveawaystruct;
    }

    public Boolean getTc() { return tc;}

    public void setTc(Boolean tc) {this.tc = tc;}
}
