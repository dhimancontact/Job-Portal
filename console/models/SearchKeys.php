<?php

namespace console\models;

use Yii;

/**
 * This is the model class for table "search_keys".
 *
 * @property integer $id
 * @property integer $category_id
 * @property string $keyword
 * @property string $location
 * @property integer $key_priority
 */
class SearchKeys extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'search_keys';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['category_id', 'key_priority'], 'integer'],
            [['keyword', 'key_priority'], 'required'],
            [['keyword'], 'string', 'max' => 30],
            [['location'], 'string', 'max' => 55],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'category_id' => 'Category ID',
            'keyword' => 'Keyword',
            'location' => 'Location',
            'key_priority' => 'Key Priority',
        ];
    }
}
