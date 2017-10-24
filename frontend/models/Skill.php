<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "skill".
 *
 * @property integer $id
 * @property string $skill
 * @property integer $frequency
 */
class Skill extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'skill';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['skill'], 'required'],
            [['frequency'], 'integer'],
            [['skill'], 'string', 'max' => 55],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'skill' => 'Skill',
            'frequency' => 'Frequency',
        ];
    }
    
    public function updateFrequency($oldSkills, $newSkills, $user_id) {
        $oldSkills = self::string2array($oldSkills);
        $newSkills = self::string2array($newSkills);
        $r=$this->addSkills(array_values(array_diff($newSkills, $oldSkills)));
        $this->removeSkills(array_values(array_diff($oldSkills, $newSkills)));
        $this->updateUserSkill($newSkills,$user_id);
    }

    public static function string2array($tags) {
        return preg_split('/\s*,\s*/', trim($tags), -1, PREG_SPLIT_NO_EMPTY);
    }

    public function addSkills($skills) {
        Skill::updateAllCounters(['frequency' => 1],['skill'=>$skills]);
        $s=[];
        foreach ($skills as $skill) {
            if (!Skill::findOne(['skill' => $skill])) {
                $sk = new Skill;
                $sk->skill = $skill;
                $sk->frequency = 1;
                $sk->save();
                $s[]=$sk;
            }
        }
        return $s;
    }

    public function removeSkills($skills) {
        if (empty($skills))
            return;
        Skill::updateAllCounters(['frequency' => -1],['skill'=>$skills]);
        $this->deleteAll('frequency<=0');
    }

    public function updateUserSkill($skills,$user_id){
        UserSkill::deleteAll(['user_id'=>$user_id]);
        foreach($skills as $skill){
            $sk=Skill::findOne(['skill' => $skill]);
            if($sk){
                $user_skill=new UserSkill;
                $user_skill->user_id=$user_id;
                $user_skill->skill_id=$sk->id;
                $user_skill->save();
            }
        }
        
    }
}
