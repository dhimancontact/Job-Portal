<?php

namespace frontend\models;

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
class Job extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'job';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['company_id', 'job_title', 'job_description', 'skill_set', 'speciality', 'year_of_experience', 'location_id'], 'required'],
            [['company_id', 'location_id', 'status', 'deleted'], 'integer'],
            [['job_description'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['job_title', 'skill_set'], 'string', 'max' => 255],
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
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'company_id' => 'Company ID',
            'job_title' => 'Job Title',
            'job_description' => 'Job Description',
            'skill_set' => 'Skill Set',
            'speciality' => 'Speciality',
            'year_of_experience' => 'Year Of Experience',
            'location_id' => 'Location ID',
            'status' => 'Status',
            'deleted' => 'Deleted',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
