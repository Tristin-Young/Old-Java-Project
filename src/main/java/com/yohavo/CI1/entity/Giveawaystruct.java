package com.yohavo.CI1.entity;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.springframework.data.jpa.repository.Query;
import org.springframework.format.annotation.DateTimeFormat;
import com.yohavo.CI1.entity.User;
import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

@Entity
public class Giveawaystruct {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "giveawayid")
    private Integer idGiveawayStruct;
    private boolean closed;
    private double prize;
    @DateTimeFormat (pattern ="yyyy/mm/dd")
    private Date startDate;
    @DateTimeFormat (pattern ="yyyy/mm/dd")
    private Date endDate;
    @ManyToOne
    @NotFound(action=NotFoundAction.IGNORE)
    private User winner;
    private String name;

    @ManyToMany()
    @JoinTable(
            name="entries",
            joinColumns = @JoinColumn(name="giveawayid"),
            inverseJoinColumns = @JoinColumn(name="userid"))
    List<User> users;


    public Integer getUsersCount(){ return users.size(); }

    public Integer getUserCount(Integer uid){
        Integer i = 0;
        for (User u:users) {
            if(u.getId() == uid){
                i++;
            }
        }
        return i;
    }

    public Long getRemainingTime(){
        long diff = this.endDate.getTime() - this.startDate.getTime();
        long seconds = TimeUnit.MILLISECONDS.toSeconds(diff);
        return seconds;
    }

    public User getWinner() {
        return winner;
    }

    public void setWinner(User winner) {
        this.winner = winner;
    }

    public List<User> getUsers() {
        return users;
    }

    public boolean getClosed() {
        return closed;
    }

    public void setClosed(boolean closed) {
        this.closed = closed;
    }

    public void setUsers(List<User> users) { this.users = users; }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getIdGiveawayStruct() {
        return idGiveawayStruct;
    }

    public void setIdGiveawayStruct(Integer idGiveawayStruct) {
        this.idGiveawayStruct = idGiveawayStruct;
    }

    public double getPrize() {
        return prize;
    }

    public void setPrize(double prize) {
        this.prize = prize;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

}






