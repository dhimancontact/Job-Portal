<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "user_skill".
 *
 * @property integer $user_id
 * @property integer $skill_id
 */
class UserSkill extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_skill';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'skill_id'], 'required'],
            [['user_id', 'skill_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'user_id' => 'User ID',
            'skill_id' => 'Skill ID',
        ];
    }
}
