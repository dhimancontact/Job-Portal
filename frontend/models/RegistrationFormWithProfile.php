<?php

namespace frontend\models;

use webvimark\modules\UserManagement\models\forms\RegistrationForm;
use webvimark\modules\UserManagement\models\User;
use webvimark\modules\UserManagement\UserManagementModule;
use yii\helpers\ArrayHelper;
use Yii;

class RegistrationFormWithProfile extends RegistrationForm {

    public $subscription;
    public $full_name;
    public $mobile;
    public $resume;
    public $location_preference_1;
    public $location_preference_2;
    public $year_of_experience;
    public $skill_set;

    /**
     * @return array
     */
    public function rules() {

        return [
            [['username', 'password', 'repeat_password'], 'required'],
            [['username', 'password', 'repeat_password'], 'trim'],
            ['username', 'unique',
                'targetClass' => 'webvimark\modules\UserManagement\models\User',
                'targetAttribute' => 'username',
            ],
            ['username', 'purgeXSS'],
            ['password', 'string', 'max' => 255],
            ['password', 'match', 'pattern' => Yii::$app->getModule('user-management')->passwordRegexp],
            ['repeat_password', 'compare', 'compareAttribute' => 'password'],
            [['full_name', 'mobile', 'location_preference_1', 'location_preference_2', 'year_of_experience', 'skill_set', 'subscription'], 'required'],
            [['location_preference_1', 'location_preference_2', 'year_of_experience'], 'integer'],
            [['resume'],'file', 'skipOnEmpty' => true, 'extensions' => 'pdf, doc, docx'],
            [['full_name'], 'string', 'max' => 100],
            [['mobile'], 'string', 'max' => 15],
            [['resume'], 'string', 'max' => 255],
        ];
    }

    /**
     * @return array
     */
    public function attributeLabels() {
        return ArrayHelper::merge(parent::attributeLabels(), [
                    'full_name' => 'Full Name',
                    'mobile' => 'Mobile',
                    'location_preference_1' => 'Location Preference 1',
                    'location_preference_2' => 'Location Preference 2',
                    'year_of_experience' => 'Year Of Experience',
                    'skill_set' => 'Skills'
        ]);
    }

    /**
     * Look in parent class for details
     *
     * @param User $user
     */
    protected function saveProfile($user) {
        $model = new UserDetail();

        $model->user_id = $user->id;

        $model->full_name = $this->full_name;
        $model->mobile = $this->mobile;
        $model->resume = $this->resume;
        $model->location_preference_1 = $this->location_preference_1;
        $model->location_preference_2 = $this->location_preference_2;
        $model->year_of_experience = $this->year_of_experience;
        $model->skill_set = $this->skill_set;

        $model->save(false);
    }

}
