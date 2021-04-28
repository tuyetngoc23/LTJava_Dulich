<<<<<<< HEAD
<%-- 
    Document   : header
    Created on : Apr 11, 2021, 2:51:21 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<header id="fh5co-header-section" class="sticky-banner">
    <div class="container">
        <div class="nav-header">
            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
            <h1 id="fh5co-logo"><a href="#"><i class="fas fa-plane"></i>Travel</a></h1>
            <!-- START #fh5co-menu-wrap -->
            <nav id="fh5co-menu-wrap" role="navigation">
                <ul class="sf-menu" id="fh5co-primary-menu">
                    <li class="active"><a href="#">Home</a></li>
                    <li>
                        <a href="#" class="fh5co-sub-ddown">Vacations</a>
                        <ul class="fh5co-sub-menu">
                            <li><a href="#">Family</a></li>
                            <li><a href="#">CSS3 &amp; HTML5</a></li>
                            <li><a href="#">Angular JS</a></li>
                            <li><a href="#">Node JS</a></li>
                            <li><a href="#">Django &amp; Python</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Flights</a></li>
                    <li><a href="#">Hotel</a></li>
                    <li><a href="#">Car</a></li>
                    <li><a href="#">Blog</a></li>
                        <c:choose>
                            <c:when test="${pageContext.request.userPrincipal.name == null}">
                            <li>
                                <a href="<c:url value="/register" />">Register</a>
                            </li>
                            <li>
                                <a href="<c:url value="/login" />">Login</a>
                            </li>
                        </c:when>
                        <c:when test="${pageContext.request.userPrincipal.name != null}">
                            <li>
                                <a href="#">${pageContext.request.userPrincipal.name}</a>
                            </li>
                            <li>
                                <a href="<c:url value="/logout" />">Logout</a>
                            </li>
                        </c:when>
                    </c:choose>
                </ul>
            </nav>
        </div>
    </div>
</header>
<div class="fh5co-hero">
    <div class="fh5co-overlay"></div>
    <div class="fh5co-cover" data-stellar-background-ratio="0.5">
        <div class="desc">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 col-md-5">
                        <div class="tabulation animate-box">

                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
<!--                                <li role="presentation" class="active">
                                    <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">Flights</a>
                                </li>
                                <li role="presentation">
                                    <a href="#hotels" aria-controls="hotels" role="tab" data-toggle="tab">Hotels</a>
                                </li>-->
                                <li role="presentation">
                                    <a href="#packages" aria-controls="packages" role="tab" data-toggle="tab">Packages</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane" id="packages">
                                    <div class="row">
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <div class="input-field">
                                                <label for="from">City:</label>
                                                <input type="text" class="form-control" id="from-place" placeholder="Los Angeles, USA"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <div class="input-field">
                                                <label for="from">Destination:</label>
                                                <input type="text" class="form-control" id="to-place" placeholder="Tokyo, Japan"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-start">Departs:</label>
                                                <input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-end">Return:</label>
                                                <input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mt">
                                            <section>
                                                <label for="class">Rooms:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="economy">1</option>
                                                    <option value="first">2</option>
                                                    <option value="business">3</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Adult:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Children:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xs-12">
                                            <input type="submit" class="btn btn-primary btn-block" value="Search Packages">
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane active" id="flights">
                                    <div class="row">
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <div class="input-field">
                                                <label for="from-place">From:</label>
                                                <input type="text" class="form-control" id="from-place" placeholder="Los Angeles, USA"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <div class="input-field">
                                                <label for="to-place">To:</label>
                                                <input type="text" class="form-control" id="to-place" placeholder="Tokyo, Japan"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-start">Check In:</label>
                                                <input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-end">Check Out:</label>
                                                <input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mt">
                                            <section>
                                                <label for="class">Class:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>Economy</option>
                                                    <option value="economy">Economy</option>
                                                    <option value="first">First</option>
                                                    <option value="business">Business</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Adult:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Children:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xs-12">
                                            <input type="submit" class="btn btn-primary btn-block" value="Search Flight">
                                        </div>
                                    </div>
                                </div>

                                <div role="tabpanel" class="tab-pane" id="hotels">
                                    <div class="row">
                                        <div class="col-xxs-12 col-xs-12 mt">
                                            <div class="input-field">
                                                <label for="from">City:</label>
                                                <input type="text" class="form-control" id="from-place" placeholder="Los Angeles, USA"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-start">Return:</label>
                                                <input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-end">Check Out:</label>
                                                <input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mt">
                                            <section>
                                                <label for="class">Rooms:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="economy">1</option>
                                                    <option value="first">2</option>
                                                    <option value="business">3</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Adult:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Children:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xs-12">
                                            <input type="submit" class="btn btn-primary btn-block" value="Search Hotel">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="desc2 animate-box">
                        <div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
                            <p>HandCrafted by <a href="http://frehtml5.co/" target="_blank" class="fh5co-site-name">FreeHTML5.co</a></p>
                            <h2>Exclusive Limited Time Offer</h2>
                            <h3>Fly to Hong Kong via Los Angeles, USA</h3>
                            <span class="price">$599</span>
                            <!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



=======
<%-- 
    Document   : header
    Created on : Apr 11, 2021, 2:51:21 PM
    Author     : Huynh Thi Tuyet Ngoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<header id="fh5co-header-section" class="sticky-banner">
    <div class="container">
        <div class="nav-header">
            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
            <h1 id="fh5co-logo"><a href="#"><i class="fas fa-plane"></i>Travel</a></h1>
            <!-- START #fh5co-menu-wrap -->
            <nav id="fh5co-menu-wrap" role="navigation">
                <ul class="sf-menu" id="fh5co-primary-menu">
                    <li class="active"><a href="#">Home</a></li>
                    <li>
                        <a href="#" class="fh5co-sub-ddown">Vacations</a>
                        <ul class="fh5co-sub-menu">
                            <li><a href="#">Family</a></li>
                            <li><a href="#">CSS3 &amp; HTML5</a></li>
                            <li><a href="#">Angular JS</a></li>
                            <li><a href="#">Node JS</a></li>
                            <li><a href="#">Django &amp; Python</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Flights</a></li>
                    <li><a href="#">Hotel</a></li>
                    <li><a href="#">Car</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<div class="fh5co-hero">
    <div class="fh5co-overlay"></div>
    <div class="fh5co-cover" data-stellar-background-ratio="0.5">
        <div class="desc">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 col-md-5">
                        <div class="tabulation animate-box">

                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active">
                                    <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">Flights</a>
                                </li>
                                <li role="presentation">
                                    <a href="#hotels" aria-controls="hotels" role="tab" data-toggle="tab">Hotels</a>
                                </li>
                                <li role="presentation">
                                    <a href="#packages" aria-controls="packages" role="tab" data-toggle="tab">Packages</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="flights">
                                    <div class="row">
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <div class="input-field">
                                                <label for="from-place">From:</label>
                                                <input type="text" class="form-control" id="from-place" placeholder="Los Angeles, USA"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <div class="input-field">
                                                <label for="to-place">To:</label>
                                                <input type="text" class="form-control" id="to-place" placeholder="Tokyo, Japan"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-start">Check In:</label>
                                                <input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-end">Check Out:</label>
                                                <input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mt">
                                            <section>
                                                <label for="class">Class:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>Economy</option>
                                                    <option value="economy">Economy</option>
                                                    <option value="first">First</option>
                                                    <option value="business">Business</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Adult:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Children:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xs-12">
                                            <input type="submit" class="btn btn-primary btn-block" value="Search Flight">
                                        </div>
                                    </div>
                                </div>

                                <div role="tabpanel" class="tab-pane" id="hotels">
                                    <div class="row">
                                        <div class="col-xxs-12 col-xs-12 mt">
                                            <div class="input-field">
                                                <label for="from">City:</label>
                                                <input type="text" class="form-control" id="from-place" placeholder="Los Angeles, USA"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-start">Return:</label>
                                                <input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-end">Check Out:</label>
                                                <input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mt">
                                            <section>
                                                <label for="class">Rooms:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="economy">1</option>
                                                    <option value="first">2</option>
                                                    <option value="business">3</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Adult:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Children:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xs-12">
                                            <input type="submit" class="btn btn-primary btn-block" value="Search Hotel">
                                        </div>
                                    </div>
                                </div>

                                <div role="tabpanel" class="tab-pane" id="packages">
                                    <div class="row">
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <div class="input-field">
                                                <label for="from">City:</label>
                                                <input type="text" class="form-control" id="from-place" placeholder="Los Angeles, USA"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <div class="input-field">
                                                <label for="from">Destination:</label>
                                                <input type="text" class="form-control" id="to-place" placeholder="Tokyo, Japan"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-start">Departs:</label>
                                                <input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt alternate">
                                            <div class="input-field">
                                                <label for="date-end">Return:</label>
                                                <input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 mt">
                                            <section>
                                                <label for="class">Rooms:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="economy">1</option>
                                                    <option value="first">2</option>
                                                    <option value="business">3</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Adult:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xxs-12 col-xs-6 mt">
                                            <section>
                                                <label for="class">Children:</label>
                                                <select class="cs-select cs-skin-border">
                                                    <option value="" disabled selected>1</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </section>
                                        </div>
                                        <div class="col-xs-12">
                                            <input type="submit" class="btn btn-primary btn-block" value="Search Packages">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="desc2 animate-box">
                        <div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
                            <p>HandCrafted by <a href="http://frehtml5.co/" target="_blank" class="fh5co-site-name">FreeHTML5.co</a></p>
                            <h2>Exclusive Limited Time Offer</h2>
                            <h3>Fly to Hong Kong via Los Angeles, USA</h3>
                            <span class="price">$599</span>
                            <!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



>>>>>>> 4c5e558626ea145526fbee05c40b24e14123b559
