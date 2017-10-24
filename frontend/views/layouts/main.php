<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use yii\helpers\Url; 

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?>
        <link rel="shortcut icon" href="<?= \Yii::getAlias('@web') ?>/img/favicon.ico" type="image/x-icon">
        <!-- Essential styles -->
   
        <!--[if lt IE 9]>
            <link rel="stylesheet" href="assets/sky-forms/css/sky-forms-ie8.css">
        <![endif]-->

        <!-- Required JS -->
        <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery.js"></script>
        <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery-ui.min.js"></script>
    </head>
    <body>
        <?php $this->beginBody() ?>

        <!-- MOBILE MENU - Option 2 -->
        <section id="navMobile" class="aside-menu left">
            <form class="form-horizontal form-search">
                <div class="input-group">
                    <input type="search" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button id="btnHideMobileNav" class="btn btn-close" type="button" title="Hide sidebar"><i class="fa fa-times"></i></button>
                    </span>
                </div>
            </form>
            <div id="dl-menu" class="dl-menuwrapper">
                <ul class="dl-menu"></ul>
            </div>
        </section> 

        <!-- SLIDEBAR -->
        <section id="asideMenu" class="aside-menu right">
            <form class="form-horizontal form-search">
                <div class="input-group">
                    <input type="search" class="form-control" placeholder="Search..." />
                    <span class="input-group-btn">
                        <button id="btnHideAsideMenu" class="btn btn-close" type="button" title="Hide sidebar"><i class="fa fa-times"></i></button>
                    </span>
                </div>
            </form>
            
            <h5 class="side-section-title">Social media</h5>
            <div class="social-media">
                <a href="#"><i class="fa fa-facebook facebook"></i></a>
                <a href="#"><i class="fa fa-google-plus google"></i></a>
                <a href="#"><i class="fa fa-twitter twitter"></i></a>
            </div>

            <h5 class="side-section-title">Contact information</h5>
            <div class="contact-info">
                <h5>Address</h5>
                <p>5th Avenue, New York - United States</p>

                <h5>Email</h5>
                <p>hello@webpixels.ro</p>

                <h5>Phone</h5>
                <p>+10 724 1234 567</p>
            </div>
        </section>
        <!DOCTYPE html>
    <!-- MAIN WRAPPER -->
    <div class="body-wrap">
        <!-- This section is only for demonstration purpose only. Check out the docs for more informations" -->
        <!-- HEADER -->
        <div id="divHeaderWrapper">
            <header class="header-standard-2">     
                <!-- MAIN NAV -->
                <div class="navbar navbar-wp navbar-arrow mega-nav" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle navbar-toggle-aside-menu">
                                <i class="fa fa-outdent icon-custom"></i>
                            </button>
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <i class="fa fa-bars icon-custom"></i>
                            </button>

                            <a class="navbar-brand" href="<?= Url::to(['site/index'])?>" title="Boomerang | One template. Infinite solutions">
                                <img src="<?= \Yii::getAlias('@web') ?>/theme/images/boomerang-logo-black.png" alt="Emp Referral | Employee Referral">
                            </a>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="hidden-md hidden-lg">
                                    <div class="bg-light-gray">
                                        <form class="form-horizontal form-light p-15" role="form">
                                            <div class="input-group input-group-lg">
                                                <input type="text" class="form-control" placeholder="I want to find ...">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-white" type="button">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                </li>
                                <li>
                                    <a href="<?= Url::to(['site/index']) ?>">Home</a>
                                </li>
                                <li>
                                    <a href="<?= Url::to(['site/about']) ?>">About us</a>
                                </li>
                                <?php if (Yii::$app->user->isGuest): ?>  
                                <li>
                                    <a href="<?= Url::to(['auth/login']) ?>">Login</a>
                                </li>
                                <?php else: ?>
                                <li>
                                    <a href="<?= Url::to(['auth/logout']) ?>">Logout</a>
                                </li>
                                <?php endif; ?>
                                
                            </ul>

                        </div><!--/.nav-collapse -->
                    </div>
                </div>
            </header>        </div>

        <!-- Optional header components (ex: slider) -->

        <?= $content ?>
        <!-- FOOTER -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="col">
                            <h4>Contact us</h4>
                            <ul>
                                <li>5th Avenue, New York - United States</li>
                                <li>Phone: +10 724 1234 567 | Fax: +10 724 1234 567 </li>
                                <li>Email: <a href="mailto:hello@example.com" title="Email Us">hello@example.com</a></li>
                                <li>Skype: <a href="skype:my.business?call" title="Skype us">my-business</a></li>
                                <li>Creating great templates is our passion</li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="col">
                            <h4>Mailing list</h4>
                            <p>Sign up if you would like to receive occasional treats from us.</p>
                            <form class="form-horizontal form-light">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Your email address...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-base" type="button">Go!</button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="col col-social-icons">
                            <h4>Follow us</h4>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-skype"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                            <a href="#"><i class="fa fa-flickr"></i></a>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="col">
                            <h4>About us</h4>
                            <p class="no-margin">
                                Boomerang MultiPurpose Template is a multi-solution product made with simplicity in mind so you can benefit as much as possible from it.
                                <br><br>
                                <a href="#" class="btn btn-block btn-base btn-icon fa-check"><span>Try it now</span></a>
                            </p>
                        </div>
                    </div>
                </div>

                <hr>

                <div class="row">
                    <div class="col-lg-9 copyright">
                        2014 © Web Pixels. All rights reserved.
                        <a href="#">Terms and conditions</a>
                    </div>
                    <div class="col-lg-3">
                        <a href="http://www.webpixels.ro" title="Made with love by Web Pixels" target="_blank" class="">
                            <img src="<?= \Yii::getAlias('@web') ?>/theme/images/webpixels-footer-logo.png" alt="Web Pixels - Designing Forward | Logo" class="pull-right">
                        </a>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <!-- Essentials -->
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/modernizr.custom.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery.mousewheel-3.0.6.pack.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery.easing.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery.metadata.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery.hoverup.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery.hoverdir.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery.stellar.js"></script>

    <!-- Boomerang mobile nav - Optional  -->
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/responsive-mobile-nav/js/jquery.dlmenu.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/responsive-mobile-nav/js/jquery.dlmenu.autofill.js"></script>

    <!-- Forms -->
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/ui-kit/js/jquery.powerful-placeholder.min.js"></script> 
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/ui-kit/js/cusel.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/sky-forms/js/jquery.form.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/sky-forms/js/jquery.validate.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/sky-forms/js/jquery.maskedinput.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/sky-forms/js/jquery.modal.js"></script>

    <!-- Assets -->
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/page-scroller/jquery.ui.totop.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/mixitup/jquery.mixitup.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/mixitup/jquery.mixitup.init.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/fancybox/jquery.fancybox.pack.js?v=2.1.5"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/waypoints/waypoints.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/milestone-counter/jquery.countTo.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/easy-pie-chart/js/jquery.easypiechart.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/social-buttons/js/rrssb.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/nouislider/js/jquery.nouislider.min.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/owl-carousel/owl.carousel.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/bootstrap/js/tooltip.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/assets/bootstrap/js/popover.js"></script>

    <!-- Sripts for individual pages, depending on what plug-ins are used -->

    <!-- Boomerang App JS -->
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/wp.app.js"></script>
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- Temp -- You can remove this once you started to work on your project -->
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/jquery.cookie.js"></script>
    <script src="<?= \Yii::getAlias('@web') ?>/theme/js/wp.switcher.js"></script>
    <script type="text/javascript" src="<?= \Yii::getAlias('@web') ?>/theme/js/wp.ga.js"></script>
    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>