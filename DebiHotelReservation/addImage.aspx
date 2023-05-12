<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addImage.aspx.cs" Inherits="DebiHotelReservation.addImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Debi-Add Image</title>

    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900" rel="stylesheet"/>
    <link rel="stylesheet" href="css/styles-merged.css"/>
    <link rel="stylesheet" href="css/style.min.css"/>
    <link rel="stylesheet" href="css/custom.css"/>
    <link rel="stylesheet" href="css/login.css"/>


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
             <li><a href="menu.aspx">Dashboard</a></li>
            <li class="hidden-xs probootstrap-logo-center"><a href="index.aspx"><img src="img/logo_md.png" class="hires" width="100" height="100" alt="Free Bootstrap Template by uicookies.com"/></a></li>
            <li><a href="login.aspx">Logout</a></li>
          </ul>
        </nav>
        </div>
    <!-- </div> -->
  </header>
  <!-- END: header -->

  <section>
  <div class="login-page">
  <div class="form">
      <h3>Add Room Image</h3>
      <br />
      <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
      <asp:Button style="background: #0026ff; height:50px; color:white" ID="Button1" runat="server" Text="Add Image" OnClick="Button1_Click" />
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
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
            <p><a href="#" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
          </div>
        </div>
       
         <div class="col-md-4">
          <div class="probootstrap-footer-widget">
            <h3>Best Rooms</h3>
            <ul class="probootstrap-blog-list">
              <li>
                <a href="#">
                  <figure class="probootstrap-image"><img src="img/img_1.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"/></figure>
                  <div class="probootstrap-text">
                    <h4>Grand Deluxe Room</h4>
                    <p>Discover stylishly adorned spaces of perfect contemporary.</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
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
