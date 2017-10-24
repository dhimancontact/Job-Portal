<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\UserDetail;

/**
 * UserDetailSearch represents the model behind the search form about `backend\models\UserDetail`.
 */
class UserDetailSearch extends UserDetail
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'location_preference_1', 'location_preference_2', 'year_of_experience'], 'integer'],
            [['full_name', 'email', 'mobile', 'resume', 'skill_set', 'created_at', 'updated_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = UserDetail::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'location_preference_1' => $this->location_preference_1,
            'location_preference_2' => $this->location_preference_2,
            'year_of_experience' => $this->year_of_experience,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'full_name', $this->full_name])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'mobile', $this->mobile])
            ->andFilterWhere(['like', 'resume', $this->resume])
            ->andFilterWhere(['like', 'skill_set', $this->skill_set]);

        return $dataProvider;
    }
}
