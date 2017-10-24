<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "location".
 *
 * @property integer $id
 * @property string $location
 * @property string $country
 * @property string $state
 */
class Location extends \yii\db\ActiveRecord
{
    public $location_name;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'location';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['location', 'country', 'state'], 'required'],
            [['location'], 'string', 'max' => 100],
            [['country', 'state'], 'string', 'max' => 55],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'location' => 'Location',
            'country' => 'Country',
            'state' => 'State',
        ];
    }
}
