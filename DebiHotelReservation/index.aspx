<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DebiHotelReservation.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Debi</title>

    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900" rel="stylesheet"/>
    <link rel="stylesheet" href="css/styles-merged.css"/>
    <link rel="stylesheet" href="css/style.min.css"/>
    <link rel="stylesheet" href="css/custom.css"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- START: header -->

  <header role="banner" class="probootstrap-header">
    <!-- <div class="container"> -->
    <div class="row">
        <a href="index.html" class="probootstrap-logo visible-xs"><img src="img/logo_sm.png" class="hires" width="120" height="33" alt="Free Bootstrap Template by uicookies.com"/></a>
        
        <a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
          <ul class="probootstrap-main-nav">
            <li class="active"><a href="index.aspx">Home</a></li>
            <li><a href="about.aspx">About</a></li>
            <li class="hidden-xs probootstrap-logo-center"><a href="index.html"><img src="img/logo_md.png" class="hires" width="100" height="100" alt="Free Bootstrap Template by uicookies.com"/></a></li>
            <li><a href="reservation.aspx">Reservation</a></li>
            <li><a href="login.aspx">Login</a></li>
          </ul>
        </nav>
        </div>
    <!-- </div> -->
  </header>
  <!-- END: header -->

  <section class="probootstrap-slider flexslider">
    <ul class="slides">
       <li style="background-image: url(img/slider_1.jpg);" class="overlay">
          <div class="container">
            <div class="row">
              <div class="col-md-10 col-md-offset-1">
                <div class="probootstrap-slider-text text-center">
                  <p><img src="img/curve_white.svg" class="seperator probootstrap-animate" alt="Free HTML5 Bootstrap Template"/></p>
                  <h1 class="probootstrap-heading probootstrap-animate">Welcome to Debi</h1>
                  <div class="probootstrap-animate probootstrap-sub-wrap">We live for vacationers and travelers who love a good deal, fun, and adventure.</div>
                </div>
              </div>
            </div>
          </div>
        </li>
        <li style="background-image: url(img/slider_2.jpg);" class="overlay">
          <div class="container">
            <div class="row">
              <div class="col-md-10 col-md-offset-1">
                <div class="probootstrap-slider-text text-center">
                  <p><img src="img/curve_white.svg" class="seperator probootstrap-animate" alt="Free HTML5 Bootstrap Template"/></p>
                  <h1 class="probootstrap-heading probootstrap-animate">Enjoy Luxury Experience</h1>
                  <div class="probootstrap-animate probootstrap-sub-wrap">This holiday season, make the most of every moment with us. Take pleasure in the perfect escape.</div>
                </div>
              </div>
            </div>
          </div>
          
        </li>
    </ul>
  </section>

  <section class="probootstrap-cta probootstrap-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="probootstrap-cta-heading">Reserve a room for your family</h2>
          <div class="probootstrap-cta-button-wrap"><a href="reservation.aspx" class="btn btn-primary">Reserve now</a></div>
        </div>
      </div>
    </div>
  </section>

  <section class="probootstrap-section">
    <div class="container">
      <div class="row mb30">
        <div class="col-md-8 col-md-offset-2 probootstrap-section-heading text-center">
          <h2>Explore our Services</h2>
          <p class="lead">Redefine your expectations. A hotel experience, unlike the rest.</p>
          <p><img src="img/curve.svg" class="svg" alt="Free HTML5 Bootstrap Template"/></p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="service left-icon probootstrap-animate">
            <div class="icon">
              <img src="img/flaticon/svg/001-building.svg" class="svg" alt="Free HTML5 Bootstrap Template by uicookies.com"/>
            </div>
            <div class="text">
              <h3>100+ Hotel Rooms</h3>
              <p>We want every stay at an Embassy Suites Hotel to feel like a little slice of paradise!</p>
            </div>  
          </div>
        </div>
        <div class="col-md-4">
          <div class="service left-icon probootstrap-animate">
            <div class="icon">
              <img src="img/flaticon/svg/003-restaurant.svg" class="svg" alt="Free HTML5 Bootstrap Template by uicookies.com"/>
            </div>
            <div class="text">
              <h3>Food &amp; Drinks</h3>
              <p>You Can’t Buy Happiness, But You Can Buy Food, And That’s Kind Of The Same Thing.</p>
            </div>  
          </div>
        </div>
        <div class="col-md-4">
          <div class="service left-icon probootstrap-animate">
            <div class="icon">
              <img src="img/flaticon/svg/004-parking.svg" class="svg" alt="Free HTML5 Bootstrap Template by uicookies.com"/>
            </div>
            <div class="text">
              <h3>Transport</h3>
              <p>24-hour service delivery comes with professionals, safe and comfortable service to and from your destination.</p>
            </div>  
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="probootstrap-section probootstrap-section-dark">
    <div class="container">
      <div class="row mb30">
        <div class="col-md-8 col-md-offset-2 probootstrap-section-heading text-center">
          <h2>Best Rooms</h2>
          <p class="lead">Book your stay with us, and you’ll be happy to come back.</p>
          <p><img src="img/curve.svg" class="svg" alt="Free HTML5 Bootstrap Template"/></p>
        </div>
      </div>
      <div class="row probootstrap-gutter10">
        <div class="col-md-6">
          <div class="probootstrap-block-image-text">
            <figure>
              <a href="img/img_1.jpg" class="image-popup">
                <img src="img/img_1.jpg" alt="Free HTML5 Bootstrap Template by uicookies.com" class="img-responsive"/>
              </a>
            </figure>
            <div class="text">
              <h3><a href="reservation.aspx">Grand Deluxe Room</a></h3>
              
              <p>Discover stylishly adorned spaces of perfect contemporary charm at our stunning Deluxe Room.</p>
              <p><a href="reservation.aspx" class="btn btn-primary">CHECK AVAILABILITY</a></p>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="probootstrap-block-image-text">
            <figure>
              <a href="img/img_2.jpg" class="image-popup">
              <img src="img/img_2.jpg" alt="Free HTML5 Bootstrap Template by uicookies.com" class="img-responsive"/>
              </a>
            </figure>
            <div class="text">
              <h3><a href="reservation.aspx">Ultra Suite Room</a></h3>
              <p>A spacious and well-designed Grand Suite includes a living room and a master bedroom with modern furnishings.</p>
              <p><a href="reservation.aspx" class="btn btn-primary">CHECK AVAILABILITY</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
 

  <section class="probootstrap-half">
    <div class="image" style="background-image: url(img/slider_3.jpg);"></div>
    <div class="text">
      <div class="probootstrap-animate fadeInUp probootstrap-animated">
        <h2 class="mt0">Best Room Reservation Service</h2>
        <p><img src="img/curve_white.svg" class="seperator" alt="Free HTML5 Bootstrap Template"/></p>
        <div class="row">
          <div class="col-md-6">
            <p>We helps you compare prices, but the booking and payment are managed by the hotels. Therefore, Debi can manage your reservation, and we’ll do our best to bring you into contact with the booking hotel, as their customer service teams are in the best position to answer all booking related questions.</p>    
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- START: footer -->
  <footer role="contentinfo" class="probootstrap-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="probootstrap-footer-widget">
            <p class="mt40"><img src="img/logo_md.png" class="hires" width="100" height="100" alt="Free HTML5 Bootstrap Template by uicookies.com"/></p>
             <p>Debi is a hotel room reservation company that was established in the year 2004 in Thailand. With the company's growth, management is seeking to expand its services globally. </p>
            <p><a href="about.aspx" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
          </div>
        </div>
       
         <div class="col-md-4">
          <div class="probootstrap-footer-widget">
            <h3>Best Rooms</h3>
            <ul class="probootstrap-blog-list">
              <li>
                <a href="reservation.aspx">
                  <figure class="probootstrap-image"><img src="img/img_1.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"/></figure>
                  <div class="probootstrap-text">
                    <h4>Grand Deluxe Room</h4>
                    <p>Discover stylishly adorned spaces of perfect contemporary.</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="reservation.aspx">
                  <figure class="probootstrap-image"><img src="img/img_2.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"/></figure>
                  <div class="probootstrap-text">
                    <h4>Ultra Suite Room</h4>
                    <p>A spacious and well-designed Grand Suite includes a living room.</p>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-md-4">
          <div class="probootstrap-footer-widget">
            <h3>Contact</h3>
            <ul class="probootstrap-contact-info">
              <li><i class="icon-location2"></i> <span>100/A, R De Mel Road, Colombo 03</span></li>
              <li><i class="icon-mail"></i><span>info@debi.com</span></li>
              <li><i class="icon-phone2"></i><span>+94 11 456 7890</span></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row mt40">
        <div class="col-md-12 text-center">
          <ul class="probootstrap-footer-social">
            <li><a href="#"><i class="icon-twitter"></i></a></li>
            <li><a href="#"><i class="icon-facebook"></i></a></li>
            <li><a href="#"><i class="icon-instagram2"></i></a></li>
          </ul>
          <p>
            <small>&copy; 2022 Debi.Plc All Rights Reserved. <br/> Designed &amp; Developed by Shanuka Sithum</small>
          </p>
          
        </div>
      </div>
    </div>
  </footer>

  <!-- END: footer -->

  <script src="js/scripts.min.js"></script>
  <script src="js/main.min.js"></script>
  <script src="js/custom.js"></script>

    </div>
    </form>
</body>
</html>
