<?php

use yii\helpers\Url; ?>
<div class="listing-image">
    <img src="<?= $model->company->image ?>" class="img-responsive" alt="<?= $model->company->company_name ?>">
</div>
<div class="cell">
    <div class="listing-body clearfix">
        <h3><a href="<?= Url::to(['site/view', 'title' => $model->job_title, 'id' => $model->id]) ?>"><?= $model->job_title ?></a></h3>
        <h4><?= $model->company->company_name ?>, <?= $model->location->location ?></h4>
        <p><?= $model->skill_set ?></p>
        <p>
            <?= $model->short_description ?>
            <a href="<?= Url::to(['site/view', 'title' => $model->job_title, 'id' => $model->id]) ?>" class="btn btn-sm  btn-light pull-right">See more</a>
        </p>
    </div>
</div> 
<div class="listing-footer">
    <ul class="aux-info">
        <li style="width:30%;"><i class="fa fa-calendar"></i><strong>Date:</strong> <?= date('M d Y', strtotime($model->created_at)) ?></li>
        <li><i class="fa fa-globe"></i><strong>City:</strong> <?= $model->location->location ?></li>
        <!--<li><i class="fa fa-history"></i><strong>Exp:</strong> <?= $model->year_of_experience ?></li>-->
        <li style="width: 19%;"><a href="<?= Url::to(['site/apply', 'title' => $model->job_title, 'id' => $model->id]) ?>" class="btn btn-lg btn-success btn-block-bm pull-right">Apply Now</a></li>
    </ul>
</div>

