<%-- 
    Document   : header1
    Created on : Apr 28, 2021, 4:01:59 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
        <a class="navbar-brand" href="/">Places</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="city-guides.html">City Guides</a></li>
                <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="travel.html">Travel With Us</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url(assets_ui/images/bg_1.jpg)" data-stellar-background-ratio="0.5"  id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Explore The World With Ease</h2>
                <p class="lead mb-5 probootstrap-animate">


                </p>
                <a href="onepage.html" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">See OnePage Verion</a> 
                </p>
            </div> 
            <div class="col-md probootstrap-animate">
                <form action="#" class="probootstrap-form">
                    <div class="form-group">
                        <div class="row mb-3">
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="id_label_single">From</label>

                                    <label for="id_label_single" style="width: 100%;">
                                        <select class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;">
                                            <option value="Australia">Australia</option>
                                            <option value="Japan">Japan</option>
                                            <option value="United States">United States</option>
                                            <option value="Brazil">Brazil</option>
                                            <option value="China">China</option>
                                            <option value="Israel">Israel</option>
                                            <option value="Philippines">Philippines</option>
                                            <option value="Malaysia">Malaysia</option>
                                            <option value="Canada">Canada</option>
                                            <option value="Chile">Chile</option>
                                            <option value="Chile">Zimbabwe</option>
                                        </select>
                                    </label>


                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="id_label_single2">To</label>
                                    <div class="probootstrap_select-wrap">
                                        <label for="id_label_single2" style="width: 100%;">
                                            <select class="js-example-basic-single js-states form-control" id="id_label_single2" style="width: 100%;">
                                                <option value="Australia">Australia</option>
                                                <option value="Japan">Japan</option>
                                                <option value="United States">United States</option>
                                                <option value="Brazil">Brazil</option>
                                                <option value="China">China</option>
                                                <option value="Israel">Israel</option>
                                                <option value="Philippines">Philippines</option>
                                                <option value="Malaysia">Malaysia</option>
                                                <option value="Canada">Canada</option>
                                                <option value="Chile">Chile</option>
                                                <option value="Chile">Zimbabwe</option>
                                            </select>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END row -->
                        <div class="row mb-5">
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="probootstrap-date-departure">Departure</label>
                                    <div class="probootstrap-date-wrap">
                                        <span class="icon ion-calendar"></span> 
                                        <input type="text" id="probootstrap-date-departure" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-group">
                                    <label for="probootstrap-date-arrival">Arrival</label>
                                    <div class="probootstrap-date-wrap">
                                        <span class="icon ion-calendar"></span> 
                                        <input type="text" id="probootstrap-date-arrival" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END row -->
                        <div class="row">
                            <div class="col-md">
                                <label for="round" class="mr-5"><input type="radio" id="round" name="direction">  Round</label>
                                <label for="oneway"><input type="radio" id="oneway" name="direction">  Oneway</label>
                            </div>
                            <div class="col-md">
                                <input type="submit" value="Submit" class="btn btn-primary btn-block">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- END section -->
