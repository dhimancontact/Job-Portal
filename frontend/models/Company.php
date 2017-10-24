<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "company".
 *
 * @property integer $id
 * @property string $company_name
 * @property string $subdomain
 * @property string $description
 * @property string $image
 */
class Company extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'company';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['company_name', 'subdomain', 'description', 'image'], 'required'],
            [['description'], 'string'],
            [['company_name', 'subdomain'], 'string', 'max' => 55],
            [['image'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'company_name' => 'Company Name',
            'subdomain' => 'Subdomain',
            'description' => 'Description',
            'image' => 'Image',
        ];
    }
}
