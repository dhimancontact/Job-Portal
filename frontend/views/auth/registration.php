<?php

use webvimark\modules\UserManagement\UserManagementModule;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\captcha\Captcha;
use yii\helpers\Html;
use frontend\models\Location;
use yii\helpers\Url;
use kartik\select2\Select2;

/**
 * @var yii\web\View $this
 * @var webvimark\modules\UserManagement\models\forms\RegistrationForm $model
 */
$this->title = UserManagementModule::t('front', 'Registration');
$this->params['breadcrumbs'][] = $this->title;
?>
<!-- MAIN CONTENT -->
<div class="pg-opt">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>Sign up</h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><a href="<?= Url::to(['site/index']) ?>">Home</a></li>
                    <li class="active">Sign up</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<section class="slice bg-white">
    <div class="wp-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 col-sm-6 col-sm-offset-3">                   
                    <div class="wp-block default user-form no-margin">
                        <div class="form-header">
                            <h2>Create your own account</h2>
                        </div>
                        <div class="form-body">
                            <?php
                            $form = ActiveForm::begin([
                                        'id' => 'user',
                                        //'layout' => 'horizontal',
                                        'validateOnBlur' => false,
                                        'options' => ['enctype' => 'multipart/form-data', 'class' => 'sky-form'],
                                        'fieldConfig' => [
                                            'template' => "{label}<label class='input'>{input}</label>{error}",
                                            'labelOptions' => ['class' => 'label'],
                                        ],
                                            /* 'fieldConfig' => [
                                              'horizontalCssClasses' => [
                                              'wrapper' => 'col-xs-6'
                                              ],
                                              ], */
                            ]);
                            ?>
                            <!--<form action="" id="frmRegister" class="sky-form">  -->                                  
                            <fieldset class="no-padding">           
                                <section>
                                    <div class="row">
                                        <div class='col-md-6'>
                                            <?=
                                            $form->field($model, 'username', ['inputTemplate' => '<i class="icon-append fa fa-user"></i>{input}<b class="tooltip tooltip-bottom-right">Needed to enter the website</b>']
                                            )->textInput(['maxlength' => 50, 'autocomplete' => 'off', 'autofocus' => true, 'placeholder' => $model->getAttributeLabel('username')])
                                            ?>
                                        </div>
                                        <div class='col-md-6'>
                                            <?=
                                            $form->field($model, 'mobile', [
                                                'inputTemplate' => '<i class="icon-append fa fa-phone"></i>{input}<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>'
                                            ])->textInput(['maxlength' => 15, 'placeholder' => $model->getAttributeLabel('mobile')])
                                            ?>
                                        </div> 
                                    </div>   
                                    <div class="row">
                                        <div class="col-md-6">
<?=
$form->field($model, 'password', [
    'inputTemplate' => '<i class="icon-append fa fa-lock"></i>{input}<b class="tooltip tooltip-bottom-right">Needed to enter the website</b>'
])->passwordInput(['maxlength' => 255, 'autocomplete' => 'off', 'placeholder' => $model->getAttributeLabel('password')])
?>               
                                        </div>
                                        <div class="col-md-6">
<?=
$form->field($model, 'repeat_password', [
    'inputTemplate' => '<i class="icon-append fa fa-lock"></i>{input}<b class="tooltip tooltip-bottom-right">Needed to verify the password</b>'
])->passwordInput(['maxlength' => 255, 'autocomplete' => 'off', 'placeholder' => $model->getAttributeLabel('repeat_password')])
?>               
                                        </div>
                                    </div>   
                                </section>
                                <hr>
                                <section>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <?=
                                            $form->field($model, 'full_name', [
                                                'inputTemplate' => '<i class="icon-append fa fa-user"></i>{input}'
                                            ])->textInput(['maxlength' => 50, 'placeholder' => $model->getAttributeLabel('full_name')])
                                            ?>
                                        </div>

                                        <div class="col-md-6">
                                            <?=
                                            $form->field($model, 'year_of_experience', [
                                                'template' => "{label}<label class='select'>{input}</label>{error}",
                                                'inputTemplate' => '{input}<i></i>'
                                            ])->dropDownList([2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9, 10 => 10, 11 => 11, 12 => 12, 13 => '12+'], ['prompt' => '-Select Year of experiance-'])
                                            ?>
                                        </div>   
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-6">
<?=
$form->field($model, 'location_preference_1', [
    'template' => "{label}<label class='select'>{input}</label>{error}",
    'inputTemplate' => '{input}<i></i>'
])->dropDownList(ArrayHelper::map(Location::find()->all(), 'id', 'location'), ['prompt' => '-Location Preference 1-'])
?>
                                        </div>
                                        <div class="col-md-6">
<?=
$form->field($model, 'location_preference_2', [
    'template' => "{label}<label class='select'>{input}</label>{error}",
    'inputTemplate' => '{input}<i></i>'
])->dropDownList(ArrayHelper::map(Location::find()->all(), 'id', 'location'), ['prompt' => '-Location Preference 2-'])
?>
                                        </div>
                                    </div>
                                </section>
                            </fieldset>  

                            <fieldset>
                                <div class="row">
                                    <div class="col-md-12">
                                        <?php
                                        $skill_data = ArrayHelper::map(\frontend\models\Skill::find()->all(), 'skill', 'skill');
                                        
                                        echo $form->field($model, 'skill_set')->widget(Select2::classname(), [
                                            'data' => $skill_data,
                                            'options' => ['placeholder' => $model->getAttributeLabel('skill_set'), 'multiple' => true],
                                            'pluginOptions' => [
                                                'tags' => true,
                                                'tokenSeparators' => [','],
                                                'maximumInputLength' => 10
                                            ],
                                        ]);
                                        ?>
                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <?= $form->field($model, 'resume')->fileInput([]) ?>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-8">
                            <?=
                            $form->field($model, 'subscription', [
                                'template' => "<label class='checkbox'>{input}</label>{error}",
                                'inputTemplate' => '{input}<i></i> I accept the <a href="#">terms and conditions</a> of this website.'
                            ])->checkBox([])
                            ?>
                                    </div>
                                    <div class="col-md-4">
<?=
Html::submitButton(
        '<span>Register now</span> ', ['class' => 'btn btn-alt btn-icon btn-icon-right btn-icon-go pull-right']
)
?>
                                    </div>
                                </div>
                            </fieldset>
                            <!--</form>-->
<?php ActiveForm::end(); ?>    
                        </div>
                        <div class="form-footer">
                            <p>Already have an account? <a href="sign-in-1.html">Click here to sign in.</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php /* <div class="user-registration">

  <h2 class="text-center">Register</h2>
  <div class="row">
  <?php
  $form = ActiveForm::begin([
  'id' => 'user',
  'layout' => 'horizontal',
  'validateOnBlur' => false,
  'options' => ['enctype' => 'multipart/form-data'],
  'fieldConfig' => [
  'horizontalCssClasses' => [
  'wrapper' => 'col-sm-12 col-sm-offset-0'
  ],
  ],
  ]);
  ?>
  <div class="col-sm-4 col-xs-12 col-sm-offset-2">
  <?= $form->field($model, 'username')->textInput(['maxlength' => 50, 'autocomplete' => 'off', 'autofocus' => true, 'placeholder' => $model->getAttributeLabel('username')])->label(false) ?>

  <?= $form->field($model, 'password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off', 'placeholder' => $model->getAttributeLabel('password')])->label(false) ?>

  <?= $form->field($model, 'repeat_password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off', 'placeholder' => $model->getAttributeLabel('repeat_password')])->label(false) ?>

  <?= $form->field($model, 'full_name')->textInput(['maxlength' => 50, 'placeholder' => $model->getAttributeLabel('full_name')])->label(false) ?>

  <?= $form->field($model, 'mobile')->textInput(['maxlength' => 15, 'placeholder' => $model->getAttributeLabel('mobile')])->label(false) ?>
  </div>
  <div class="col-sm-4 col-xs-12">
  <?= $form->field($model, 'location_preference_1')->dropDownList(ArrayHelper::map(Location::find()->all(), 'id', 'location'), ['prompt' => '-Location Preference 1-'])->label(false) ?>
  <?= $form->field($model, 'location_preference_2')->dropDownList(ArrayHelper::map(Location::find()->all(), 'id', 'location'), ['prompt' => '-Location Preference 2-'])->label(false) ?>

  <?= $form->field($model, 'resume')->fileInput([])->label(false) ?>

  <div class="form-group">
  <div class="col-sm-offset-3 col-sm-9">
  <?=
  Html::submitButton(
  '<span class="glyphicon glyphicon-ok"></span> ' . UserManagementModule::t('front', 'Register'), ['class' => 'btn btn-primary pull-right']
  )
  ?>
  </div>
  </div>
  </div>
  <?php ActiveForm::end(); ?>

  </div>
  </div> */ ?>