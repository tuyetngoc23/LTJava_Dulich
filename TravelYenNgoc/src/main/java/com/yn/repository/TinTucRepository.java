/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository;

import com.yn.pojo.BinhLuan;
import com.yn.pojo.Customer;
import com.yn.pojo.Thich;
import com.yn.pojo.TinTuc;
import com.yn.pojo.Tour;
import com.yn.pojo.User;
import java.util.List;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface TinTucRepository {
    List<TinTuc> getTinTucs(String kw);
    boolean addOrUpdateTour(TinTuc tinTuc);
    TinTuc getTinTucById(int tourId);
    boolean deleteTinTuc(int tourId);
    List<BinhLuan> getBinhLuans(int tinTucID);
    void addBinhLuan(BinhLuan binhLuan);
    void addthich(int tintuc);
    Thich addthich(int tintucid, int khid);
}

