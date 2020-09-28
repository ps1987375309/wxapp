import {classBehavior} from "../classic-beh.js"

const mMgr = wx.getBackgroundAudioManager()

Component({
  behaviors:[classBehavior],   //引入公共属性值
  /**
   * 组件的属性列表
   */
  properties: {
    src:String,
    title:String
  },

  /**
   * 组件的初始数据
   */
  data: {
    pauseSrc: 'images/player@pause.png',
    playSrc: 'images/player@play.png',
    playing:false
  },

  detached:function(){
    mMgr.stop()
  },
  /**
   * 组件的方法列表
   */
  methods: {
    onPlay:function(event){
      if(!this.data.playing){
        this.setData({
          playing:true
        })
        mMgr.src = this.properties.src;
        mMgr.title = this.properties.title;
      }else{
        this.setData({
          playing:false
        })
        mMgr.pause()
      }
    }
  }
})
