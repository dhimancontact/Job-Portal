<!-- MAIN CONTENT -->
<div class="static-page-image">
    <img src="<?= \Yii::getAlias('@web') ?>/theme/images/backgrounds/full-bg-20.jpg" alt="">
    <div class="description-left">
        <span class="title c-white">Help others to achieve their dreams</span>
        <span class="subtitle text-wrapped alpha c-black">A complete website template that can be perfectly adapted in any situation or quickly customized for other ideas.</span>
        <!--<a href="#" class="btn btn-lg btn-b-white mt-40 hidden-xs">Post a job now</a>-->
    </div>
</div>

<section class="slice bg-white">
    <div class="container">
        <div class="wp-section relative">
            <form class="form-inline form-base" role="form">
                <div class="inline-form-filters over-top-element base" style="margin-top: -116px;">
                    <!-- Main filters -->
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group form-group-lg">
                                <label class="sr-only">Enter Skills, Role</label>
                                <input type="text" class="form-control input-lg" placeholder="I am looking for ...">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group form-group-lg">
                                <label class="sr-only">Location</label>
                                <input type="text" class="form-control input-lg" placeholder="Location">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group form-group-lg field_select">
                                <label class="sr-only">Experience</label>
                                <select class="form-control select_styled base no-padding">
                                    <option value="">Experience</option>
                                    <option value="2">2 Years</option>
                                    <?php for ($i = 3; $i < 12; $i++): ?>
                                        <option value="<?= $i ?>"><?= $i ?></option>
                                    <?php endfor; ?>
                                    <option value="12">12 +</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <a href="#" class="btn btn-lg btn-block btn-alt btn-icon btn-icon-right btn-icon-go">
                                <span>Search</span>
                            </a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<section class="slice bg-white no-padding">
    <div class="wp-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <?php if (Yii::$app->session->hasFlash('applied')): ?>
                        <div class="alert alert-success alert-dismissable">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                            <?= Yii::$app->session->getFlash('applied') ?>
                        </div>
                    <?php endif; ?>
                    <?php if (Yii::$app->session->hasFlash('already_applied')): ?>
                        <div class="alert alert-success alert-dismissable">
                            <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                            <?= Yii::$app->session->getFlash('already_applied') ?>
                        </div>
                    <?php endif; ?>
                    <?php \yii\widgets\Pjax::begin(); ?>
                    <?=
                    \yii\widgets\ListView::widget([
                        'dataProvider' => $provider,
                        'id' => 'home-job-list',
                        'itemOptions' => ['tag' => 'li', 'class' => 'item'],
                        'options' => [
                            'tag' => 'ul',
                            'class' => 'list-listings-2',
                        ],
                        'itemView' => '_item_view',
                            /* 'pager' => ['class' => \kop\y2sp\ScrollPager::className(),
                              'container' => '.list-listings-2',
                              'item'=>'.item'
                              ] */
                    ]);
                    ?>
                    <?php \yii\widgets\Pjax::end(); ?>

                </div>
                <div class="col-md-4">
                    <!-- FILTER LIST WIDGET -->
                    <div class="panel panel-default panel-sidebar-1">
                        <div class="panel-heading"><h2>Most wanted jobs</h2></div>
                        <ul class="categories no-border">
                            <li><a href="#" hidefocus="true" style="outline: none;">Country Manager Assistant</a></li>
                            <li><a href="#" hidefocus="true" style="outline: none;">Sales Team Manager</a></li>
                            <li><a href="#" hidefocus="true" style="outline: none;">Experienced PHP/MySQL Developer</a></li>
                            <li><a href="#" hidefocus="true" style="outline: none;">Technical Support</a></li>
                            <li><a href="#" hidefocus="true" style="outline: none;">IT Network Administrator</a></li>
                        </ul>
                    </div>
                    <div class="panel panel-default panel-sidebar-1">
                        <div class="panel-heading"><h2>Companies</h2></div>
                        <ul class="categories no-border">
                            <li><a href="#" hidefocus="true" style="outline: none;">Web design (23)</a></li>
                            <li><a href="#" hidefocus="true" style="outline: none;">Online business (100)</a></li>
                            <li><a href="#" hidefocus="true" style="outline: none;">Marketing strategy (7)</a></li>
                            <li><a href="#" hidefocus="true" style="outline: none;">Technology (33)</a></li>
                            <li><a href="#" hidefocus="true" style="outline: none;">About finance (123)</a></li>
                        </ul>
                    </div>

                    <!-- NEWSLETTER WIDGET -->
                    <div class="panel panel-default panel-sidebar-1">
                        <div class="panel-heading"><h2>Sign up to our newsletter</h2></div>
                        <form class="sky-form" role="form">
                            <div class="panel-body">
                                <p>
                                    Sign up if you would like to receive occasional treats from us.
                                </p>
                                <section>
                                    <div class="form-group">
                                        <label class="label sr-only">Password</label>
                                        <label class="input">
                                            <input type="email" name="email" placeholder="name@example.com">
                                        </label>
                                    </div>     
                                </section>
                                <label class="checkbox"><input type="checkbox" name="remember" checked><i></i>Keep me logged in</label>
                            </div>
                            <button type="submit" class="btn btn-lg btn-block-bm btn-alt btn-icon btn-icon-right btn-envelope">
                                <span>Sign me Up!</span>
                            </button>
                        </form>   
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- CLIENTS -->
<section class="slice bg-white">
    <div class="wp-section">
        <div class="container">
            <div class="section-title-wr">
                <h3 class="section-title left"><span>Our partners</span></h3>
            </div>
            <div class="row">
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="client">
                        <a href="#">
                            <img src="<?= \Yii::getAlias('@web') ?>/theme/images/clients/client-1.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="client">
                        <a href="#">
                            <img src="<?= \Yii::getAlias('@web') ?>/theme/images/clients/client-2.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="client">
                        <a href="#">
                            <img src="<?= \Yii::getAlias('@web') ?>/theme/images/clients/client-3.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="client">
                        <a href="#">
                            <img src="<?= \Yii::getAlias('@web') ?>/theme/images/clients/client-4.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="client">
                        <a href="#">
                            <img src="<?= \Yii::getAlias('@web') ?>/theme/images/clients/client-7.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <div class="client">
                        <a href="#">
                            <img src="<?= \Yii::getAlias('@web') ?>/theme/images/clients/client-6.png" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>