<?php
namespace app\index\controller;

class Wxapi extends Base
{
    public function index()
    {
        switch ($this->method) {
            case 'GET':
                $data = db("test")->where("id =1")->find();
                
                return json( $data );
            break;
            
            default:
                ;
            break;
        }
        
    }
    public function addLike(){
        switch ($this->method) {
            case 'POST':
                $id = $this->param['art_id'];
                $type = $this->param['type'];
                if($type == 400){
                    $fav_nums = db("book")->where("bid = {$id} ")->find()['fav_nums'];
                    $fav_nums = $fav_nums + 1;
                    $new_data = array(
                        'fav_nums' => $fav_nums,
                        'like_status' => 1
                    );
                    $data = db("book")->where("bid = {$id} ")->update($new_data);
                }else{
                    $fav_nums = db("test")->where("id = {$id} AND type = {$type} ")->find()['fav_nums'];
                    $fav_nums = $fav_nums + 1;
                    $new_data = array(
                        'fav_nums' => $fav_nums,
                        'like_status' => 1
                    );
                    $data = db("test")->where("id = {$id} AND type = {$type} ")->update($new_data);
                }
                
                return json( $data );
                break;
                
            default:
                ;
                break;
        }
    }
    public function cancelLike(){
        switch ($this->method) {
            case 'POST':
                $id = $this->param['art_id'];
                $type = $this->param['type'];
                if($type == 400){
                    $fav_nums = db("book")->where("bid = {$id} ")->find()['fav_nums'];
                    $fav_nums = $fav_nums - 1;
                    $new_data = array(
                        'fav_nums' => $fav_nums,
                        'like_status' => 0
                    );
                    $data = db("book")->where("bid = {$id} ")->update($new_data);
                }else{
                    $fav_nums = db("test")->where("id = {$id} AND type = {$type} ")->find()['fav_nums'];
                    $fav_nums = $fav_nums - 1;
                    $new_data = array(
                        'fav_nums' => $fav_nums,
                        'like_status' => 0
                    );
                    $data = db("test")->where("id = {$id} AND type = {$type} ")->update($new_data);
                }
                
                
                return json( $data );
                break;
                
            default:
                ;
                break;
        }
    }
    public function prev(){
        
    }
    
    public function next(){
        switch ($this->method) {
            case 'POST':
                $index = $this->param['index'];
                $data = db("test")->where(" `index` = {$index} ")->find();
                return json( $data );
            break;
        }
    }
    public function favor(){
        switch ($this->method) {
            case 'POST':
                $id = $this->param['id'];
                $type = $this->param['type'];
                $data = db("test")->where("id = {$id} AND type = {$type} ")->find();
                return json( $data );
                break;
        }
    }
    public function hot_list(){
        switch ($this->method) {
            case 'GET':
                $data = db("book")->select();
                return json( $data );
                break;
        }
    }
    
    
    public function book_detail(){
        switch ($this->method) {
            case 'GET':
                $bid = $this->param['bid'];
                $data = db("book")->where("id= {$bid}")->find();
                return json( $data );
                break;
        }
    }
    
    public function book_favor(){
        switch ($this->method) {
            case 'GET':
                $bid = $this->param['bid'];
                $data = db("book")->where("id= {$bid}")->find();
                return json( $data );
                break;
        }
    }
    public function book_short_comment(){
        switch ($this->method) {
            case 'GET':
                $bid = $this->param['bid'];
                $comments_data = db("comments")->where("bid= {$bid}")->select();
                $data['book_id'] = $bid;
                $data['comments'] = $comments_data;
                return json( $data );
                break;
        }
    }
    
    public function add_short_comment(){
        switch ($this->method) {
            case 'POST':
                $bid = $this->param['book_id'];
                $content = $this->param['content'];
                
                $nums = db("comments")->where("bid= {$bid} AND content = '{$content}' ")->find()['nums'];
                if($nums){
                    $comments_data = array(
                        "nums" => $nums + 1,
                    );
                    
                    $data = db("comments")->where("bid= {$bid} AND content = '{$content}' ")->update($comments_data);
                    return json( $data );
                }
                $comments_data = array(
                    "bid" => $bid,
                    "content" => $content,
                    "nums" => 1
                );
               
                $data = db("comments")->insert($comments_data);
                return json( $data );
                break;
        }
    }
    
    public function hot_keyword(){
        switch ($this->method) {
            case 'GET':
                $keywords_data['hot'] = db("hot_keyword")->column('keyword');
                
                return json( $keywords_data );
                break;
        }
    }
    public function book_search(){
        switch ($this->method) {
            case 'GET':
                $keyword = $this->param['q'];
                $start = $this->param['start'] == null ? 0 : $this->param['start'];
                $summary = $this->param['summary'];
                if($summary == 1){
                    $book_data['books'] = db("book")->where("title like '%{$keyword}%' ")->limit($start,10)->select();
                    $book_data['start'] = $start;
                    $book_data['count'] = count($book_data['books']);
                    $book_data['total'] = db("book")->where("title like '%{$keyword}%' ")->count();
                }
                return json( $book_data );
                break;
        }
    }
    public function favor_bookcount(){
        switch ($this->method) {
            case 'GET':
                    $favor_book['count'] = 100;
                    return json( $favor_book );
                break;
        }
    }
    
    public function classic_favor(){
        switch ($this->method) {
            case 'GET':
                $data = db("test")->select();
                
                return json( $data );
                break;
        }
    }
    public function classic_detail(){
        switch ($this->method) {
            case 'GET':
                $cid = $this->param['cid'];
                $data = db("test")->where("id = {$cid} ")->find();
                
                return json( $data );
                break;
        }
    }
}
