<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "job".
 *
 * @property integer $id
 * @property integer $company_id
 * @property string $job_title
 * @property string $job_description
 * @property string $skill_set
 * @property string $speciality
 * @property string $year_of_experience
 * @property integer $location_id
 * @property integer $status
 * @property integer $deleted
 * @property string $created_at
 * @property string $updated_at
 */
class Job extends \yii\db\ActiveRecord {

    public $_oldSkills;
    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'job';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['company_id', 'job_title', 'job_description', 'skill_set', 'speciality', 'year_of_experience', 'location_id'], 'required'],
            [['company_id', 'location_id', 'status', 'deleted'], 'integer'],
            [['job_description'], 'string'],
            [['created_at', 'updated_at', 'skill_set'], 'safe'],
            [['job_title'], 'string', 'max' => 255],
            [['speciality'], 'string', 'max' => 100],
            [['year_of_experience'], 'string', 'max' => 55],
        ];
    }

    public function getCompany() {
        return $this->hasOne(Company::className(), ['id' => 'company_id']);
    }

    public function getLocation() {
        return $this->hasOne(Location::className(), ['id' => 'location_id']);
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'company_id' => 'Company',
            'job_title' => 'Job Title',
            'job_description' => 'Job Description',
            'skill_set' => 'Skill Set',
            'speciality' => 'Speciality',
            'year_of_experience' => 'Year Of Experience',
            'location_id' => 'Location',
            'status' => 'Status',
            'deleted' => 'Deleted',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    public function afterFind() {
        parent::afterFind();
        $this->_oldSkills = $this->skill_set;
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
        $result=$skill->updateFrequency($this->_oldSkills, $this->skill_set, $this->id);
        return parent::afterSave($insert, $changedAttributes);
    }
    
    public function afterDelete() {
        parent::afterDelete();
        $skill=new Skill;
        $skill->updateFrequency($this->skill_set, '', $this->id);
    }
}
