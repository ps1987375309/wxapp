<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件

function json_result_data($data = [], $code = 200) {
    if (! $data)
        $data = [ ];
    if (is_bool ( $code ))
        $code = 200;
    $res = array (
        'status' => 'success',
        'code' => $code,
        'msg' => lang ( $code ),
        'data' => $data
    );
    
    return json ( $res );
    exit ();
}