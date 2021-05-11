/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository;

import com.yn.pojo.TinTuc;
import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import java.util.Date;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface TourRepository {
    List<Tour> getTour();
    List<Tour> getTour(String kw);

    List<Tour> findTour(int ditu,int diden,Date ngaydiDate,Date ngayve);

    boolean addOrUpdateTour(Tour tour);

    Tour getTourById(int tourId);

    boolean deleteTour(int tourId);
    

}
