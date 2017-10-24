<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    
    public $css = [
        'theme/assets/bootstrap/css/bootstrap.min.css',
        'theme/font-awesome/css/font-awesome.min.css',
        'theme/assets/fancybox/jquery.fancybox.css?v=2.1.5',
        'theme/css/global-style.css',
        'theme/assets/owl-carousel/owl.carousel.css',
        'theme/assets/owl-carousel/owl.theme.css',
        'theme/assets/sky-forms/css/sky-forms.css',
        'theme/css/custome.css'
    ];
    public $js = [
        'theme/js/jquery.js',
        'theme/js/jquery-ui.min.js',
        'theme/js/modernizr.custom.js',
        'theme/assets/bootstrap/js/bootstrap.min.js',
        'theme/js/jquery.mousewheel-3.0.6.pack.js',
        'theme/js/jquery.easing.js',
        'theme/js/jquery.metadata.js',
        'theme/js/jquery.hoverup.js',
        'theme/js/jquery.hoverdir.js',
        'theme/js/jquery.stellar.js',
        'theme/js/jquery.metadata.js',
        'theme/assets/responsive-mobile-nav/js/jquery.dlmenu.js',
        'theme/assets/responsive-mobile-nav/js/jquery.dlmenu.autofill.js',
        'theme/assets/ui-kit/js/jquery.powerful-placeholder.min.js',
        'theme/assets/ui-kit/js/cusel.min.js',
        'theme/assets/sky-forms/js/jquery.form.min.js',
        'theme/assets/sky-forms/js/jquery.validate.min.js',
        'theme/assets/sky-forms/js/jquery.maskedinput.min.js',
        'theme/assets/sky-forms/js/jquery.modal.js',
        'theme/assets/hover-dropdown/bootstrap-hover-dropdown.min.js',
        'theme/assets/page-scroller/jquery.ui.totop.min.js',
        'theme/assets/mixitup/jquery.mixitup.js',
        'theme/assets/mixitup/jquery.mixitup.init.js',
        'theme/assets/fancybox/jquery.fancybox.pack.js?v=2.1.5',
        'theme/assets/waypoints/waypoints.min.js',
        'theme/assets/milestone-counter/jquery.countTo.js',
        'theme/assets/easy-pie-chart/js/jquery.easypiechart.js',
        'theme/assets/social-buttons/js/rrssb.min.js',
        'theme/assets/nouislider/js/jquery.nouislider.min.js',
        'theme/assets/owl-carousel/owl.carousel.js',
        'theme/assets/bootstrap/js/tooltip.js',
        'theme/assets/bootstrap/js/popover.js',
        'theme/js/wp.app.js'
        
    ];
    public $jsOptions = ['position' => \yii\web\View::POS_HEAD];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
