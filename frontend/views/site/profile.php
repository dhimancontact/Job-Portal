<?php
use yii\helpers\Url; ?>
<!-- MAIN CONTENT -->
        <div class="pg-opt">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>User account</h2>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="<?= Url::to(['site/index'])?>">Home</a></li>
                        <li class="active">Profile</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <section class="slice bg-white">
        <div class="wp-section user-account">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="user-profile-img">
                            <img src="images/prv/team/team-agency-2.jpg" alt="">
                        </div>
                        <!--<ul class="categories mt-20">
                            <li><a href="#">Personal informations</a></li>
                            <li><a href="#">Settings</a></li>
                            <li><a href="#">My orders</a></li>
                            <li><a href="#">Wishlist</a></li>
                        </ul>-->
                    </div>
                    <div class="col-md-9">                     
                        <div class="tabs-framed">
                            <ul class="tabs clearfix">
                                <li class="active"><a href="#tab-1" data-toggle="tab">Profile Details</a></li>
                                <li><a href="#tab-2" data-toggle="tab">Applied Openings</a></li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="tab-1">
                                    <div class="tab-body">
                                        <dl class="dl-horizontal style-2">
                                            <h3 class="title title-lg">Personal information</h3>
                                            
                                            <dt><?= $model->getAttributeLabel('full_name'); ?></dt>
                                            <dd>
                                                <span class="pull-left"><?php $model->full_name;?></span>
                                                <a href="#" class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
                                            </dd>
                                            <hr>
                                            <dt>Email</dt>
                                            <dd>
                                            <span class="pull-left"><?php $model->user->email;?></span>
                                                <a href="#" class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
                                            </dd>
                                            <hr>
                                            <dt>Mobile</dt>
                                            <dd>
                                                <span class="pull-left"><?php $model->mobile;?></span>
                                                <a href="#" class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
                                            </dd>
                                            <hr>
                                            <dt>Experience</dt>
                                            <dd>
                                                <span class="pull-left"><?php $model->year_of_experience;?></span>
                                                <a href="#" class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
                                            </dd>
                                            
                                            <dt>Skills</dt>
                                            <dd>
                                                <span class="pull-left"><?php $model->skill_set;?></span>
                                                <a href="#" class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
                                            </dd>
                                            
                                            <dt>Location preferences</dt>
                                            <dd>
                                                <span class="pull-left"><?php $model->location_preference_1;?>,<?php $model->location_preference_2;?></span>
                                                <a href="#" class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
                                            </dd>
                                            
                                        </dl>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="tab-2">
                                    <div class="tab-body" style="padding-bottom: 0;">
                                        <h3 class="title title-lg">Applied Openings</h3>
                                    
                                    <table class="table table-orders table-bordered table-striped table-responsive no-margin">
                                        <tbody>
                                            <tr>
                                                <th>Job title</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                            </tr>
                                            <?php foreach($user_jobs as $user_jo): ?>
                                            <tr>
                                                <td><a href="<?= Url::to(['site/view','title'=>$user_job->job_title, 'id'=>$user_job->id]); ?>"><?= $user_job->job_title; ?></a></td>
                                                <td><?= date('Y-m-d', strtotime($user_job->created_at)); ?></td>
                                                <td>Applied</td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>