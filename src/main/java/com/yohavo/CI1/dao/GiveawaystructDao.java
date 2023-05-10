package com.yohavo.CI1.dao;

import com.yohavo.CI1.entity.Giveawaystruct;
import com.yohavo.CI1.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface GiveawaystructDao extends JpaRepository<Giveawaystruct, Integer> {

    @Query("SELECT g FROM Giveawaystruct g, User u WHERE u.id = g.idGiveawayStruct  ")
    Giveawaystruct getUserByUsername(@Param("username") String username);

    @Query("SELECT g FROM Giveawaystruct  g WHERE g.idGiveawayStruct = :gid")
    Giveawaystruct getGiveawaystructById(@Param("gid") Integer gid);

    List<Giveawaystruct> findByClosedFalse();
    List<Giveawaystruct> findByClosedTrue();
}
