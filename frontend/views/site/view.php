<?php

use yii\helpers\Url; ?>
<!-- MAIN CONTENT -->
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?= $job->job_title ?></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><a href="<?= Url::to(['site/index']) ?>">Home</a></li>
                    <li class="active"><?= $job->job_title ?></li>
                </ol>
            </div>
        </div>
    </div>
</div>

<section class="slice bg-white">
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
                    <ul class="list-listings-2"> 
                        <li class="">
                            <div class="listing-image">
                                <img src="<?= $job->company->image ?>" class="img-responsive" alt="">
                            </div>
                            <div class="cell">
                                <div class="listing-body clearfix">
                                    <h3><a href="#" hidefocus="true" style="outline: none;"><?= $job->job_title ?></a></h3>
                                    <h4><?= $job->company->company_name ?>, <?= $job->location->location ?></h4>
                                    <p>Skills: <?= $job->skill_set ?></p>
                                    <p>
                                        <?= $job->speciality ?>
                                    </p>
                                </div>
                                
                            </div>
                            <div class="listing-footer">
                                <ul class="aux-info">
                                    <li style="width:30%;"><i class="fa fa-calendar"></i><strong>Date:</strong> <?= date('M d Y', strtotime($job->created_at)) ?></li>
                                    <li><i class="fa fa-globe"></i><strong>City:</strong> <?= $job->location->location ?></li>
                                    <li><i class="fa fa-history"></i><strong>Exp:</strong> <?= $job->year_of_experience ?></li>
                                    <li style="width: 19%;"><a href="<?= Url::to(['site/apply', 'title' => $job->job_title, 'id' => $job->id]) ?>" class="btn btn-lg btn-success btn-block-bm pull-right">Apply Now</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>

                    <div class="section-title-wr">
                        <h3 class="section-title left"><span>Overview</span></h3>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <?= $job->job_description ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>