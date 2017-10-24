<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "user_detail".
 *
 * @property integer $id
 * @property string $full_name
 * @property string $email
 * @property string $mobile
 * @property string $resume
 * @property integer $location_preference_1
 * @property integer $location_preference_2
 * @property integer $year_of_experience
 * @property string $skill_set
 * @property string $created_at
 * @property string $updated_at
 */
class UserDetail extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_detail';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['full_name', 'email', 'mobile', 'resume', 'location_preference_1', 'location_preference_2', 'year_of_experience', 'skill_set'], 'required'],
            [['location_preference_1', 'location_preference_2', 'year_of_experience'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['full_name', 'email'], 'string', 'max' => 100],
            [['mobile'], 'string', 'max' => 15],
            [['resume', 'skill_set'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'full_name' => 'Full Name',
            'email' => 'Email',
            'mobile' => 'Mobile',
            'resume' => 'Resume',
            'location_preference_1' => 'Location Preference 1',
            'location_preference_2' => 'Location Preference 2',
            'year_of_experience' => 'Year Of Experience',
            'skill_set' => 'Skill Set',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
