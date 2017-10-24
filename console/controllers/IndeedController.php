<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace console\controllers;
 
use yii\console\Controller;
use console\models\Job;
 
class IndeedController extends Controller {

    /*public function actionTest()
    {

        ini_set('max_execution_time', 0);
ini_set("memory_limit", "-1");
set_time_limit(0);

        $job_details = (new \yii\db\Query())
            ->select('*')
            ->from('job_detail')
            ->all();
            echo ($job_details);exit;
        foreach($job_details as $job_detail){
            $location_id=null;
            $company_id=null;

            if($job_company){
                $company=(new \yii\db\Query())->from('company')->where(['company_name' => $job_detail['company']])->orWhere(['subdomain'=>$job_detail['company']])->one();
                if(!$company){
                    Yii::$app->db->createCommand()
                        ->insert('company', [
                        'company_name' => $job_detail['company']
                        ])->execute();
                    $company_id=Yii::$app->db->getLastInsertID();
                }else{
                    $company_id=$company['id'];
                }
            }

            if($job_detail['city'] || $job_detail['state']){
                $query=(new \yii\db\Query())->from('location');
                if($job_detail['city'] && $job_detail['state']){
                    $location=$query->where(['location' => $job_detail['city']])->andWhere(['state'=>$job_detail['state']])->one();
                    if(!$location){
                        Yii::$app->db->createCommand()
                            ->insert('location', [
                            'location' => $job_detail['city'],
                            'state' => $job_detail['state']
                            ])->execute();
                        $location_id=Yii::$app->db->getLastInsertID();
                    }else{
                        $location_id=$location['id'];
                    }
                }else if($job_detail['city']){
                    $location=$query->where(['location' => $job_detail['city']])->orWhere(['state' => $job_detail['city']])->one();
                    if(!$location){
                        Yii::$app->db->createCommand()
                            ->insert('location', [
                            'location' => $job_detail['city'],
                            'state' => $job_detail['city']
                            ])->execute();
                        $location_id=Yii::$app->db->getLastInsertID();
                    }else{
                        $location_id=$location['id'];
                    }
                }else {
                    $location=$query->where(['state' => $job_detail['state']])->orWhere(['location' => $job_detail['state']])->one();
                    if(!$location){
                        Yii::$app->db->createCommand()
                            ->insert('location', [
                            'location' => $job_detail['state'],
                            'state' => $job_detail['state']
                            ])->execute();
                        $location_id=Yii::$app->db->getLastInsertID();
                    }else{
                        $location_id=$location['id'];
                    }
                }
            }

            $jobModel=new Job;
            $jobModel->company_id=$company_id;
            $jobModel->job_title=$job_detail['job_title'];
            $jobModel->job_description=$job_detail['description'];
            $jobModel->short_description=$job_detail['short_description'];
            $jobModel->skill_set=$job_detail['search_key'];
            $jobModel->speciality=$job_detail['search_key'];
            $jobModel->location_id=$location_id;
            $jobModel->site_job_id=$job_detail['site_job_id'];
            $jobModel->job_posted=$job_detail['job_posted'];
            $jobModel->save();
        }
    }*/

    public function actionIndex() {
        $hour=date("H");
        $keywords = (new \yii\db\Query())
            ->select(['k.id', 'k.keyword', 'k.location', 'k.full_scrapped'])
            ->from('search_keys k')
            ->leftJoin('key_priority p', 'p.search_key_id=k.id')
            ->where(['p.run_hour' => $hour])
            ->orderBy('p.priority ASC')
            ->all();
        $indeedUrl="https://www.indeed.com/jobs?";
        foreach($keywords as $keyword){
            $url='';
            if($keyword['location']){
                $url=$indeedUrl.'q='.$keyword['keyword'].'&l='.$keyword['location'].'&sort=date';
            }else{
                $url=$indeedUrl.'q='.$keyword['keyword'].'&sort=date';
            }
            $content=$this->getContent($url.'&start=0');
            if(!$keyword['full_scrapped']){
                $total_count=$this->getCount($content);
                $keyword_id=$keyword['id'];
                \Yii::$app->db->createCommand()->update('search_keys', ['full_scrapped' => 1], "id = $keyword_id")->execute();
            }else{
                $total_count=50;
            }
            $list=$this->getList($content, $url, $total_count, 0, $keyword['keyword'], $keyword['location']);
        }
    }

    public function getContent($link)
    {
        $ch = curl_init($link);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $content=curl_exec($ch);
        if($content === false)
        {
            echo "Waittt:::".$content;
            echo 'Curl error: ' . curl_error($ch);
            flush();
            return(false);

        }
        return($content);
    }

    public function getCount($content){
        $dom = new \DOMDocument;
        @$dom->loadHTML($content);
        $finder = new \DomXPath($dom);
        $countNode= $finder->query("//div[@id='searchCount']");
        $count=0;
        if(isset($countNode->item(0)->nodeValue) && $countNode->item(0)->nodeValue){
            $keys=explode('of ', $countNode->item(0)->nodeValue);
            $count=trim(array_pop($keys));
        }
        $count=str_replace(',', '', $count);
        return (int)$count;
    }

    public function getList($content, $url, $total_count, $count, $searchKey, $searchLocation){
        $indeedDetailUrl="https://www.indeed.com/viewjob?";
        $dom = new \DOMDocument;
        @$dom->loadHTML($content);
        $finder = new \DomXPath($dom);

        $list_items= $finder->query("//div[contains(@class, 'row') and contains(@class, 'result')]");
        $jobs=[];
        
        foreach($list_items as $list_item){
            $id='';
            $job=[];
            $title=$list_item->getElementsByTagName("h2");
            $correct=0;
            foreach($title as $til){
            $correct=1;
            }
            if(!$correct){
            continue;
            }
            if($title->item(0)->getAttribute('class')=="jobtitle"){
                $heading=$title->item(0)->getElementsByTagName("a");
                $linkUrl=$heading->item(0)->getAttribute('href');
                if (strpos($linkUrl, 'jk=') !== false) {
                    $parts = parse_url($linkUrl);
                    parse_str($parts['query'], $query);
                    if(isset($query['jk'])){
                        $id=$query['jk'];
                        $job['link']=$indeedDetailUrl.'jk='.$id;
                    }
                }else{
                    $urls=explode('?',$linkUrl);
                    $keys=explode('-', $urls[0]);
                    $id=array_pop($keys);
                    $job['link']=$indeedDetailUrl.'jk='.$id;
                }
                $job['title']=$heading->item(0)->nodeValue;
            }
            if((new \yii\db\Query())->from('job')->where(['site_job_id' => $id])->exists()){
                $count=$count+1;
                continue;
            }

            $details=$list_item->getElementsByTagName("span");
            foreach($details as $detail){
                if($detail->getAttribute('class')=="company" && $detail->getAttribute('itemprop')=="hiringOrganization"){
                    $company_link=$detail->getElementsByTagName("a");
                    if(isset($company_link->item(0)->nodeValue)){
                        $job['company']=trim(strip_tags($company_link->item(0)->nodeValue));
                    }
                    else{
                        $job['company']=trim(strip_tags($detail->nodeValue));
                    }
                }
                if($detail->getAttribute('itemprop')=="addressLocality"){
                    $job['location']=$detail->nodeValue;
                }

                if($detail->getAttribute('itemprop')=="description"){
                    $job['short_description']=$detail->nodeValue;
                }

                if($detail->getAttribute('class')=="date"){
                    $posted_date=$detail->nodeValue;
                    if (strpos($posted_date, '30+') !== false) {
                        $posted_date='31 days';
                    }else{
                        $posted_date=str_replace(' ago', '',$posted_date);
                    }
		    if(strpos($posted_date, 'Today')!==false){
			$date = (new \DateTime())->modify('-1 hour');
                    	$job['posted_date']=$date->format('Y-m-d H:i:s');
		    }else if(strpos($posted_date, 'Just posted')!==false){
			$date = (new \DateTime())->modify('-1 minute');
                    	$job['posted_date']=$date->format('Y-m-d H:i:s');
		    }else{
			$date = (new \DateTime())->modify('-'.$posted_date);
                    	$job['posted_date']=$date->format('Y-m-d H:i:s');
		    }
                    
                }
            }
            if(isset($job['link']) && $job['link']){
                $description=$this->getDetail($job['link']);
                $job['description']=$description;
            }
            $job_title=$job['title'];
            $job_description=isset($job['description'])?$job['description']:'';
            $job_short_description=isset($job['short_description'])?$job['short_description']:'';
            if(isset($job['location'])){
                if (strpos($job['location'], ',') !== false) {
                    $loca=explode(',',$job['location']);
                    $job_city=trim($loca[0]);
                    $state_text=trim(isset($loca[1])?$loca[1]:'');
                    if (strpos($state_text, ' ') !== false) {
                        $state_text=substr($state_text,0,2);
                    }
                    $job_state=$state_text;
                }else{
                    $job_city=isset($job['location'])?$job['location']:'';
                    $job_state='';
                }
            }else{
                $job_city=$searchLocation;
                $job_state='';
            }
            
            $job_company=isset($job['company'])?$job['company']:'';
            $job_job_site='indeed';
            $job_site_job_id=$id;
            $job_link=isset($job['link'])?$job['link']:'';
            $job_posted=isset($job['posted_date'])?$job['posted_date']:'';
            
            $location_id=null;
            $company_id=null;

            if($job_company){
                $company=(new \yii\db\Query())->from('company')->where(['company_name' => $job_company])->orWhere(['subdomain'=>$job_company])->one();
                if(!$company){
                    \Yii::$app->db->createCommand()
                        ->insert('company', [
                        'company_name' => $job_company
                        ])->execute();
                    $company_id=\Yii::$app->db->getLastInsertID();
                }else{
                    $company_id=$company['id'];
                }
            }

            if($job_city || $job_state){
                $query=(new \yii\db\Query())->from('location');
                if($job_city && $job_state){
                    $location=$query->where(['location' => $job_city])->andWhere(['state'=>$job_state])->one();
                    if(!$location){
                        \Yii::$app->db->createCommand()
                            ->insert('location', [
                            'location' => $job_city,
                            'state' => $job_state
                            ])->execute();
                        $location_id=\Yii::$app->db->getLastInsertID();
                    }else{
                        $location_id=$location['id'];
                    }
                }else if($job_city){
                    $location=$query->where(['location' => $job_city])->orWhere(['state' => $job_city]);
                    if(!$location){
                        \Yii::$app->db->createCommand()
                            ->insert('location', [
                            'location' => $job_city,
                            'state' => $job_city
                            ])->execute();
                        $location_id=\Yii::$app->db->getLastInsertID();
                    }else{
                        $location_id=$location['id'];
                    }
                }else {
                    $location=$query->where(['state' => $job_state])->orWhere(['location' => $job_state]);
                    if(!$location){
                        \Yii::$app->db->createCommand()
                            ->insert('location', [
                            'location' => $job_state,
                            'state' => $job_state
                            ])->execute();
                        $location_id=\Yii::$app->db->getLastInsertID();
                    }else{
                        $location_id=$location['id'];
                    }
                }
            }

            $jobModel=new Job;
            $jobModel->company_id=$company_id;
            $jobModel->job_title=$job_title;
            $jobModel->job_description=$job_description;
            $jobModel->short_description=$job_short_description;
            $jobModel->skill_set=$searchKey;
            $jobModel->speciality=$searchKey;
            $jobModel->location_id=$location_id;
            $jobModel->site_job_id=$id;
            $jobModel->job_posted=$job_posted;
            $jobModel->save();
            $count=$count+1;
        }
        if($count<($total_count-1) && $count < 1000){
            $content=$this->getContent($url.'&start='.$count);
            $list=$this->getList($content, $url, $total_count, $count, $searchKey, $searchLocation);
        }
        return $count;
    }


    public function getDetail($link){
        $content=$this->getContent($link);
        $dom = new \DOMDocument;
        @$dom->loadHTML($content);
        $finder = new \DomXPath($dom);
        $summaryNode= $finder->query("//span[@id='job_summary']");
        return $summaryNode->item(0)->nodeValue;
    }
}
