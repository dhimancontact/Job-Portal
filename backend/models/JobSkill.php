<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "job_skill".
 *
 * @property integer $job_id
 * @property integer $skill_id
 */
class JobSkill extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'job_skill';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['job_id', 'skill_id'], 'required'],
            [['job_id', 'skill_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'job_id' => 'Job ID',
            'skill_id' => 'Skill ID',
        ];
    }
}
