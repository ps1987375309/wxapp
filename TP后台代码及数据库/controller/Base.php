<?php

namespace app\index\controller;

use think\Request;

class Base
{
    protected $method;
    protected $param = [];
    
    public function __construct(){
        $request = Request::instance();
        $mothod = $request->method();
        $param = $request->param();
        $this->method = $mothod;
        $this->param = $param;
    }
}