
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="../../favicon.ico">

  <title>MyTrekAdvisor</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/static/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/static/assets/css/frontpage.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css'>

  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <link href="${pageContext.request.contextPath}/static/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/static/assets/css/sticky-footer-navbar.css" rel="stylesheet">

  <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
  <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
  <script src="${pageContext.request.contextPath}/static/assets/js/ie-emulation-modes-warning.js"></script>

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
    .tcb-product-slider {
      background: white;
      padding: 2% 0;
    }
    .tcb-product-slider .carousel-control {
      width: 0%;
    }
    .tcb-product-item a {
      color: #147196;
    }
    .tcb-product-item a:hover {
      text-decoration: none;
    }
    .tcb-product-item .tcb-hline {
      margin: 10px 0;
      height: 1px;
      background: #ccc;
    }
    @media all and (max-width: 768px) {
      .tcb-product-item {
        margin-bottom: 30px;
      }
    }
    .tcb-product-photo {
      text-align: center;
      height: 180px;
      /*background: #fff;*/
    }
    .tcb-product-photo img {
      height: 100%;
      display: inline-block;
    }
    .tcb-product-info {
      background: #f0f0f0;
      padding: 15px;
    }
    .tcb-product-title h4 {
      margin-top: 0;
      white-space: nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
    }
    .tcb-product-rating {
      color: #acacac;
    }
    .tcb-product-rating .active {
      color: #FFB500;
    }
    .tcb-product-price {
      color: firebrick;
      font-size: 18px;
    }

    .details {
      margin: 50px 0; }
      .details h1 {
        font-size: 32px;
        text-align: center;
        margin-bottom: 3px; }
        .details .back-link {
          text-align: center; }
          .details .back-link a {
            display: inline-block;
            margin: 20px 0;
            padding: 15px 30px;
            background: #333;
            color: #fff;
            border-radius: 24px; }

            .details .back-link a svg {
              margin-right: 10px;
              vertical-align: text-top;
              display: inline-block; }

            </style>
            <style type="text/css">
            .item
            { 
              max-height: 80vh !important;
              min-height: 100% !important;
              min-width: 100% !important;
            }
          </style>
          
        </head>

        <body>
          <div class="container-fluid">
            <!-- Fixed navbar -->
            <nav class="navbar navbar-inverse navbar-fixed-top">
              <div class="navbar-header" style="margin-left: 3%">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand text-default" href="#"><b>MyTrekAdvisor</b></a>
              </div>
              <div id="navbar" class="collapse navbar-collapse ">
                <ul class="nav navbar-nav pull-right">
                  <li class="active"><a href="#">Home</a></li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Packages<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li class="dropdown-header">Basic Packages</li>
                      <li><a href="#">ABC</a></li>
                      <li><a href="#">XYZ</a></li>
                      <li><a href="#">KJKJ</a></li>
                      <li role="separator" class="divider"></li>
                      <li class="dropdown-header">Deluxe Packages</li>
                      <li><a href="#">ABC</a></li>
                      <li><a href="#">XYZ</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Contact us</a></li>
                  <li><a href="#">About us</a></li>
                  <li class="dropdown" style="margin-right: 10px">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" >Profile<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li class="dropdown-header">User</li>
                      <li><a href="login.html">Login</a></li>
                      <li><a href="registration.html">Register</a></li>
                      <li role="separator" class="divider"></li>
                      <li class="dropdown-header">Admin</li>
                      <li><a href="admin/index.html">Login</a></li>
                    </ul>
                  </li>
                </ul>
              </div><!--/.nav-collapse -->
            </nav>

            <!-- Begin page content -->


            <div id="myCarousel" class="carousel slide" data-ride="carousel" style="">
              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active ">
                  <img src="${pageContext.request.contextPath}/static/img/img1.jpg" class="img-responsive" alt="Los Angeles">
                  <div class="carousel-caption">
                    <h1>Explore. Dream. Discover.</h1>
                    <p>Journey is always more important than the destination.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                  </div>
                </div>

                <div class="item">
                  <img src="${pageContext.request.contextPath}/static/img/img2.jpg" class="img-responsive" alt="Los Angeles">
                  <div class="carousel-caption">
                    <h1>Explore. Dream. Discover.</h1>
                    <p>Journey is always more important than the destination.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                  </div>
                </div>

                <div class="item">
                  <img src="${pageContext.request.contextPath}/static/img/img3.jpg"  class="img-responsive" alt="Los Angeles">
                  <div class="carousel-caption">
                    <h1>Explore. Dream. Discover.</h1>
                    <p>Journey is always more important than the destination.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                  </div>
                </div>

              </div>

              <!-- Left and right controls -->
              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>

            <div class="row">    
              <div class="col-xs-8 col-xs-offset-2" style="margin-top: 1%">
                <h3 class="text-center">Where you wants to go?</h3>    
                <div class="input-group">
                  <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                      <span id="search_concept"><span class="glyphicon glyphicon-align-justify"></span> All</span>  <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#contains"><i class="fa fa-vk" aria-hidden="true"></i>Rock Climbing</a></li>
                      <li><a href="#its_equal"> <i class="fa fa-area-chart" aria-hidden="true"></i>Camp</a></li>
                      <li><a href="#greather_than"> <span class="glyphicon glyphicon-user text-success"></span>Category 2</a></li>
                      <li><a href="#less_than"><i class="fa fa-area-chart" aria-hidden="true"></i></span>Category3</a></li>
                      <li class="divider"></li>
                      <li><a href="#all"><i class="fa fa-area-chart" aria-hidden="true"></i>Category 4</a></li>
                    </ul>
                  </div>
                  <input type="hidden" name="search_param" value="all" id="search_param"/>         
                  <input type="text" class="form-control" name="x" placeholder="Eg.Annapurna base camp"/>
                  <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                  </span>
                </div>
              </div>
            </div>


            <!-- Top Featured -->
            <div class="row" style="margin-bottom: 1%">
              <h3 class="text-center">TOP FEATURED</h3>
              <div class="container-fluid" style="margin-left:-1%;">
                <div class="col-sm-12">
                 <div class="col-sm-4">
                  <div class="tcb-product-item">
                    <div class="tcb-product-info">
                      <div class="tcb-product-title">
                        <h4><a href="#">ABC </a></h4></div>
                        <div class="tcb-product-rating">
                          <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                          <a href="#">(745 ratings)</a>
                        </div>
                        <div class="tcb-hline"></div>
                        <div class="tcb-product-price">
                          $ 19.00 (63% off)
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="tcb-product-item">
                      <div class="tcb-product-info">
                        <div class="tcb-product-title">
                          <h4><a href="#">XYZ</a></h4></div>
                          <div class="tcb-product-rating">
                            <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                            <a href="#">(745 ratings)</a>
                          </div>
                          <div class="tcb-hline"></div>
                          <div class="tcb-product-price">
                            $ 19.00 (63% off)
                          </div>
                        </div>
                      </div>
                    </div>



                    <div class="col-sm-4">
                      <div class="tcb-product-item">
                        <div class="tcb-product-info">
                          <div class="tcb-product-title">
                            <h4><a href="#">C</a></h4></div>
                            <div class="tcb-product-rating">
                              <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                              <a href="#">(745 ratings)</a>
                            </div>
                            <div class="tcb-hline"></div>
                            <div class="tcb-product-price">
                              $ 19.00 (63% off)
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-12">
                     <div class="col-sm-4">
                      <div class="tcb-product-item">
                        <div class="tcb-product-info">
                          <div class="tcb-product-title">
                            <h4><a href="#">ABC </a></h4></div>
                            <div class="tcb-product-rating">
                              <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                              <a href="#">(745 ratings)</a>
                            </div>
                            <div class="tcb-hline"></div>
                            <div class="tcb-product-price">
                              $ 19.00 (63% off)
                            </div>
                          </div>
                        </div>
                      </div>

                      <div class="col-sm-4">
                        <div class="tcb-product-item">
                          <div class="tcb-product-info">
                            <div class="tcb-product-title">
                              <h4><a href="#">XYZ</a></h4></div>
                              <div class="tcb-product-rating">
                                <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                <a href="#">(745 ratings)</a>
                              </div>
                              <div class="tcb-hline"></div>
                              <div class="tcb-product-price">
                                $ 19.00 (63% off)
                              </div>
                            </div>
                          </div>
                        </div>



                        <div class="col-sm-4">
                          <div class="tcb-product-item">
                            <div class="tcb-product-info">
                              <div class="tcb-product-title">
                                <h4><a href="#">C</a></h4></div>
                                <div class="tcb-product-rating">
                                  <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                  <a href="#">(745 ratings)</a>
                                </div>
                                <div class="tcb-hline"></div>
                                <div class="tcb-product-price">
                                  $ 19.00 (63% off)
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>  <div class="col-sm-12">
                         <div class="col-sm-4">
                          <div class="tcb-product-item">
                            <div class="tcb-product-info">
                              <div class="tcb-product-title">
                                <h4><a href="#">ABC </a></h4></div>
                                <div class="tcb-product-rating">
                                  <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                  <a href="#">(745 ratings)</a>
                                </div>
                                <div class="tcb-hline"></div>
                                <div class="tcb-product-price">
                                  $ 19.00 (63% off)
                                </div>
                              </div>
                            </div>
                          </div>

                          <div class="col-sm-4">
                            <div class="tcb-product-item">
                              <div class="tcb-product-info">
                                <div class="tcb-product-title">
                                  <h4><a href="#">XYZ</a></h4></div>
                                  <div class="tcb-product-rating">
                                    <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                    <a href="#">(745 ratings)</a>
                                  </div>
                                  <div class="tcb-hline"></div>
                                  <div class="tcb-product-price">
                                    $ 19.00 (63% off)
                                  </div>
                                </div>
                              </div>
                            </div>



                            <div class="col-sm-4">
                              <div class="tcb-product-item">
                                <div class="tcb-product-info">
                                  <div class="tcb-product-title">
                                    <h4><a href="#">C</a></h4></div>
                                    <div class="tcb-product-rating">
                                      <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                      <a href="#">(745 ratings)</a>
                                    </div>
                                    <div class="tcb-hline"></div>
                                    <div class="tcb-product-price">
                                      $ 19.00 (63% off)
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <!-- Top fetaured End -->

                        <!-- TS Thumbnail Slider -->
                        <div class="tcb-product-slider">
                          <div class="container-fluid">
                            <h3 class="text-center">HOT DEALS</h3>
                            <div id="mytsslider" class="carousel slide" data-ride="carousel">
                              <!-- Wrapper for slides -->
                              <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                  <div class="row">
                                    <div class="col-xs-6 col-sm-3">
                                      <div class="tcb-product-item">
                                        <div class="tcb-product-photo">
                                          <a href="#"><img src="${pageContext.request.contextPath}/static/img/img1.jpg" class="img-responsive" alt="a" /></a>
                                        </div>
                                        <div class="tcb-product-info">
                                          <div class="tcb-product-title">
                                            <h4><a href="#">Khopasi</a></h4></div>
                                            <div class="tcb-product-rating">
                                              <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                              <a href="#">(4,585 ratings)</a>
                                            </div>
                                            <div class="tcb-hline"></div>
                                            <div class="tcb-product-price">
                                              $ 495.00 (17% off)
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="col-xs-6 col-sm-3">
                                        <div class="tcb-product-item">
                                          <div class="tcb-product-photo">
                                            <a href="#"><img src="${pageContext.request.contextPath}/static/img/img2.jpg" class="img-responsive" alt="a" /></a>
                                          </div>
                                          <div class="tcb-product-info">
                                            <div class="tcb-product-title">
                                              <h4><a href="#">Khopasi</a></h4></div>
                                              <div class="tcb-product-rating">
                                                <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                <a href="#">(4,585 ratings)</a>
                                              </div>
                                              <div class="tcb-hline"></div>
                                              <div class="tcb-product-price">
                                                $ 495.00 (17% off)
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-3">
                                          <div class="tcb-product-item">
                                            <div class="tcb-product-photo">
                                              <a href="#"><img src="${pageContext.request.contextPath}/static/img/img3.jpg" class="img-responsive" alt="a" /></a>
                                            </div>
                                            <div class="tcb-product-info">
                                              <div class="tcb-product-title">
                                                <h4><a href="#">Khopasi</a></h4></div>
                                                <div class="tcb-product-rating">
                                                  <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                  <a href="#">(4,585 ratings)</a>
                                                </div>
                                                <div class="tcb-hline"></div>
                                                <div class="tcb-product-price">
                                                  $ 495.00 (17% off)
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                          <div class="col-xs-6 col-sm-3">
                                            <div class="tcb-product-item">
                                              <div class="tcb-product-photo">
                                                <a href="#"><img src="${pageContext.request.contextPath}/static/img/img1.jpg" class="img-responsive" alt="a" /></a>
                                              </div>
                                              <div class="tcb-product-info">
                                                <div class="tcb-product-title">
                                                  <h4><a href="#">Khopasi</a></h4></div>
                                                  <div class="tcb-product-rating">
                                                    <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                    <a href="#">(4,585 ratings)</a>
                                                  </div>
                                                  <div class="tcb-hline"></div>
                                                  <div class="tcb-product-price">
                                                    $ 495.00 (17% off)
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="item">
                                          <div class="row">
                                            <div class="col-xs-6 col-sm-3">
                                              <div class="tcb-product-item">
                                               <div class="tcb-product-photo">
                                                <a href="#"><img src="${pageContext.request.contextPath}/static/img/img2.jpg" class="img-responsive" alt="a" /></a>
                                              </div>
                                              <div class="tcb-product-info">
                                                <div class="tcb-product-title">
                                                  <h4><a href="#">ABC</a></h4></div>
                                                  <div class="tcb-product-rating">
                                                    <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                    <a href="#">(2,125 ratings)</a>
                                                  </div>
                                                  <div class="tcb-hline"></div>
                                                  <div class="tcb-product-price">
                                                    $ 49.00 (40% off)
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-3">
                                              <div class="tcb-product-item">
                                                <div class="tcb-product-photo">
                                                  <a href="#"><img src="${pageContext.request.contextPath}/static/img/img3.jpg" class="img-responsive" alt="a" /></a>
                                                </div>
                                                <div class="tcb-product-info">
                                                  <div class="tcb-product-title">
                                                    <h4><a href="#">Lore Sepum</a></h4></div>
                                                    <div class="tcb-product-rating">
                                                      <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                      <a href="#">(5 ratings)</a>
                                                    </div>
                                                    <div class="tcb-hline"></div>
                                                    <div class="tcb-product-price">
                                                      $ 9.00
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="col-xs-6 col-sm-3">
                                                <div class="tcb-product-item">
                                                  <div class="tcb-product-photo">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/static/img/img1.jpg" class="img-responsive" alt="a" /></a>
                                                  </div>
                                                  <div class="tcb-product-info">
                                                    <div class="tcb-product-title">
                                                      <h4><a href="#">XYZ</a></h4></div>
                                                      <div class="tcb-product-rating">
                                                        <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                        <a href="#">(215 ratings)</a>
                                                      </div>
                                                      <div class="tcb-hline"></div>
                                                      <div class="tcb-product-price">
                                                        $ 39.00 (15% off)
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-3">
                                                  <div class="tcb-product-item">
                                                    <div class="tcb-product-photo">
                                                      <a href="#"><img src="${pageContext.request.contextPath}/static/img/img3.jpg" class="img-responsive" alt="a" /></a>
                                                    </div>
                                                    <div class="tcb-product-info">
                                                      <div class="tcb-product-title">
                                                        <h4><a href="#">Test Glasses For Lab</a></h4></div>
                                                        <div class="tcb-product-rating">
                                                          <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i>
                                                          <a href="#">(10,345 ratings)</a>
                                                        </div>
                                                        <div class="tcb-hline"></div>
                                                        <div class="tcb-product-price">
                                                          $ 11,999.00 (37% off)
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="item">
                                                <div class="row">
                                                  <div class="col-xs-6 col-sm-3">
                                                    <div class="tcb-product-item">
                                                      <div class="tcb-product-photo">
                                                        <a href="#"><img src="${pageContext.request.contextPath}/static/img/img3.jpg" class="img-responsive" alt="a" /></a>
                                                      </div>
                                                      <div class="tcb-product-info">
                                                        <div class="tcb-product-title">
                                                          <h4><a href="#">India</a></h4></div>
                                                          <div class="tcb-product-rating">
                                                            <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                            <a href="#">(945 ratings)</a>
                                                          </div>
                                                          <div class="tcb-hline"></div>
                                                          <div class="tcb-product-price">
                                                            $ 299.00 (54% off)
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                    <div class="col-xs-6 col-sm-3">
                                                      <div class="tcb-product-item">
                                                        <div class="tcb-product-photo">
                                                          <a href="#"><img src="${pageContext.request.contextPath}/static/img/img2.jpg" class="img-responsive" alt="a" /></a>
                                                        </div>
                                                        <div class="tcb-product-info">
                                                          <div class="tcb-product-title">
                                                            <h4><a href="#">Red Pepper</a></h4></div>
                                                            <div class="tcb-product-rating">
                                                              <i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                              <a href="#">(15 ratings)</a>
                                                            </div>
                                                            <div class="tcb-hline"></div>
                                                            <div class="tcb-product-price">
                                                              $ 5.00 (11% off)
                                                            </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="col-xs-6 col-sm-3">
                                                        <div class="tcb-product-item">
                                                          <div class="tcb-product-photo">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/static/img/img2.jpg" class="img-responsive" alt="a" /></a>
                                                          </div>
                                                          <div class="tcb-product-info">
                                                            <div class="tcb-product-title">
                                                              <h4><a href="#">Pro Cell Batteries </a></h4></div>
                                                              <div class="tcb-product-rating">
                                                                <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                                <a href="#">(745 ratings)</a>
                                                              </div>
                                                              <div class="tcb-hline"></div>
                                                              <div class="tcb-product-price">
                                                                $ 19.00 (63% off)
                                                              </div>
                                                            </div>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-6 col-sm-3">
                                                          <div class="tcb-product-item">
                                                            <div class="tcb-product-photo">
                                                              <a href="#"><img src="${pageContext.request.contextPath}/static/img/img1.jpg" class="img-responsive" alt="a" /></a>
                                                            </div>
                                                            <div class="tcb-product-info">
                                                              <div class="tcb-product-title">
                                                                <h4><a href="#">Pro Cell Batteries </a></h4></div>
                                                                <div class="tcb-product-rating">
                                                                  <i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="active glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
                                                                  <a href="#">(745 ratings)</a>
                                                                </div>
                                                                <div class="tcb-hline"></div>
                                                                <div class="tcb-product-price">
                                                                  $ 19.00 (63% off)
                                                                </div>
                                                              </div>
                                                            </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                    <!-- Controls -->
                                                    <a class="left carousel-control" href="#mytsslider" role="button" data-slide="prev">
                                                      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                                      <span class="sr-only">Previous</span>
                                                    </a>
                                                    <a class="right carousel-control" href="#mytsslider" role="button" data-slide="next">
                                                      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                                      <span class="sr-only">Next</span>
                                                    </a>
                                                  </div>
                                                </div>
                                              </div>
                                              <!-- TS Thumbnail slider end -->

                                            </div>

                                            <footer class="footer" style="background-color: black">
                                              <div class="container">
                                                <p class="text-muted text-center">Copyright &copy; 2017 . All Right Reserved</p>
                                              </div>
                                            </footer>



    <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="${pageContext.request.contextPath}/static/dist/js/jquery.min.js"></script>
      <script>
        window.jQuery || document.write('<script src="${pageContext.request.contextPath}/static/dist/js/jquery.min.js"/>')</script>
        <script src="${pageContext.request.contextPath}/static/dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="${pageContext.request.contextPath}/static/assets/js/ie10-viewport-bug-workaround.js"></script>

        <!-- Heroslider -->
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js'></script>

        <!-- End -->
      </body>
      </html>