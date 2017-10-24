<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\Company;
use backend\models\Location;
use kartik\select2\Select2;

/* @var $this yii\web\View */
/* @var $model backend\models\Job */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="job-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'company_id')->dropDownList(ArrayHelper::map(Company::find()->all(), 'id', 'company_name'), ['prompt' => '-Choose a Company-']) ?>

    <?= $form->field($model, 'job_title')->textInput(['maxlength' => true]) ?>

    <?=
    $form->field($model, 'job_description')->widget(marqu3s\summernote\Summernote::className(), [
        'clientOptions' => [
        ]
    ])
    ?>

    <?php
    $skill_data = ArrayHelper::map(\backend\models\Skill::find()->all(), 'skill', 'skill');
    if($model->skill_set){
        $model->skill_set=explode(",",$model->skill_set);
    }
    echo $form->field($model, 'skill_set')->widget(Select2::classname(), [
        'data' => $skill_data,
        'options' => ['placeholder' => 'Select skill', 'multiple' => true],
        'pluginOptions' => [
            'tags' => true,
            'tokenSeparators' => [','],
            'maximumInputLength' => 10
        ],
    ]);
    ?>

    <?= $form->field($model, 'speciality')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'year_of_experience')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'location_id')->dropDownList(ArrayHelper::map(Location::find()->all(), 'id', 'location'), ['prompt' => '-Choose a Location-']) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
