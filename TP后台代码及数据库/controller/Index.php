<?php
namespace app\index\controller;

// use FFMpeg\FFMpeg;

class Index
{
    
    
    public function index()
    {
        return '<style type="text/css">*{ padding: 0; margin: 0; } .think_default_text{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p> ThinkPHP V5<br/><span style="font-size:30px">十年磨一剑 - 为API开发设计的高性能框架</span></p><span style="font-size:22px;">[ V5.0 版本由 <a href="http://www.qiniu.com" target="qiniu">七牛云</a> 独家赞助发布 ]</span></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="ad_bd568ce7058a1091"></think>';
    }
    
    public function getVideoInfo(){
        
        $file = ROOT_PATH."upload/test.mp4";
        
//         $file1 = ROOT_PATH."upload/test.avi";
//         exec("ffmpeg -i $file -vcodec copy -acodec copy $file1");     //转格式

//         $ffmpeg = \FFMpeg\FFMpeg::create();  //实例化ffmpeg
//         $video = $ffmpeg->open($file);//打开一个本地的视频文件
//         $frame = $video->frame(\FFMpeg\Coordinate\TimeCode::fromSeconds(5));//截取视频中第几秒的截图
//         $frame->save(ROOT_PATH."upload/image.jpg");//保存截图
        
//         $file1 = ROOT_PATH."upload/720pv.m3u8";
//         $command = "ffmpeg -i $file -map 0 -dn -vcodec copy   -acodec copy -vbsf h264_mp4toannexb -bf 0  -hls_list_size 0 -hls_time 5 -f hls -y $file1 ";       
//         exec($command);

        $ctime = date("Y-m-d H:i:s",filectime($file));//创建时间
        $data = array(
            'ctime'=>$ctime
        );
        return json_result_data( $data );
    }
    
    
    
}
