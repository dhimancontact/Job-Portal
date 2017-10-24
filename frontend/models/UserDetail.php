<?php

namespace frontend\models;

use webvimark\modules\UserManagement\models\User;
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
    public $_oldSkills;
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
            [['full_name', 'email', 'mobile', 'location_preference_1', 'location_preference_2', 'year_of_experience', 'skill_set'], 'required'],
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
    
    public function afterFind() {
        parent::afterFind();
        $this->_oldSkills = $this->skill_set;
    }
    
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
    
    public function beforeSave($insert) {
        if (parent::beforeSave($insert)) {
            if ($this->isNewRecord) {
                $this->created_at = new \yii\db\Expression('NOW()');
            }
            if(is_array($this->skill_set)){
                $this->skill_set=implode(",",$this->skill_set);
            }
            $this->updated_at = null;
            return true;
        }
        return false;
    }
    
    public function afterSave($insert, $changedAttributes)
    {
        $skill=new Skill;
        $result=$skill->updateFrequency($this->_oldSkills, $this->skill_set, $this->user_id);
        return parent::afterSave($insert, $changedAttributes);
    }
    
    public function afterDelete() {
        parent::afterDelete();
        $skill=new Skill;
        $skill->updateFrequency($this->skill_set, '', $this->user_id);
    }
}
