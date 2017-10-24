<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "user_job".
 *
 * @property integer $id
 * @property integer $user_id
 * @property integer $job_id
 * @property string $created_at
 * @property string $updated_at
 */
class UserJob extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_job';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'job_id'], 'required'],
            [['user_id', 'job_id'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'job_id' => 'Job ID',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
