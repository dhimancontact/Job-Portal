<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Job;

/**
 * JobSearch represents the model behind the search form about `backend\models\Job`.
 */
class JobSearch extends Job {

    public $company;
    public $location;

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['id', 'company_id', 'location_id', 'status', 'deleted'], 'integer'],
            [['job_title', 'job_description', 'skill_set', 'speciality', 'year_of_experience', 'created_at', 'updated_at', 'company', 'location'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios() {
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
    public function search($params) {
        $query = Job::find();
        $query->joinWith(['company', 'location']);
        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $dataProvider->sort->attributes['company'] = [
            // The tables are the ones our relation are configured to
            // in my case they are prefixed with "tbl_"
            'asc' => ['company.company_name' => SORT_ASC],
            'desc' => ['company.company_name' => SORT_DESC],
        ];

        $dataProvider->sort->attributes['location'] = [
            'asc' => ['location.location' => SORT_ASC],
            'desc' => ['location.location' => SORT_DESC],
        ];

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'company_id' => $this->company_id,
            'location_id' => $this->location,
            'status' => $this->status,
            'deleted' => $this->deleted,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'job_title', $this->job_title])
                ->andFilterWhere(['like', 'job_description', $this->job_description])
                ->andFilterWhere(['like', 'skill_set', $this->skill_set])
                ->andFilterWhere(['like', 'speciality', $this->speciality])
                ->andFilterWhere(['like', 'year_of_experience', $this->year_of_experience])
                ->andFilterWhere(['like', 'company.company_name', $this->company])
                ->andFilterWhere(['like', 'location.location', $this->location]);

        return $dataProvider;
    }

}
