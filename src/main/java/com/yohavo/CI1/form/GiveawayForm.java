package com.yohavo.CI1.form;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class GiveawayForm {

    private Integer idGiveawayStruct;

    private double prize;
    private boolean closed;
    private String startDate;
    private String name;
    private String endDate;
    private long winner;

    public Integer getIdGiveawayStruct() {
        return idGiveawayStruct;
    }

    public void setIdGiveawayStruct(Integer idGiveawayStruct) {
        this.idGiveawayStruct = idGiveawayStruct;
    }

    public boolean getClosed() {
        return closed;
    }

    public void setClosed(boolean closed) {
        this.closed = closed;
    }

    public double getPrize() {
        return prize;
    }

    public void setPrize(double prize) {
        this.prize = prize;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public long getWinner() {
        return winner;
    }

    public void setWinner(long winner) {
        this.winner = winner;
    }
}
