// pages/classic/classic.js
import {ClassicModel} from "../../models/classic.js";
import {LikeModel} from "../../models/like.js";
let classicmodel = new ClassicModel();
let likemodel = new LikeModel();
Component({

  /**
   * 页面的初始数据
   */
  properties: {
    cid: Number,
    type: Number
  },
  data: {
    classicData:null,
    latest:true,
    first:false,
    likeCount: 0,
    likeStatus: false
  },

  /**
   * 生命周期函数--监听页面加载
   */
  attached(options)  {
    const cid = this.properties.cid
    const type = this.properties.type
    if (!cid) {
      classicmodel.getLatest((res)=>{    //由于getLatest是异步请求，return是无效的，需要使用回调函数获取值
        // console.log(res)
        this.setData({
          classicData:res,
          likeCount: res.fav_nums,
          likeStatus: res.like_status
        });
      })
    }else{
      classicmodel.getById(cid, type,res=>{
        this._getLikeStatus(res.id, res.type)
        this.setData({
          classicData: res,
          latest: classicmodel.isLatest(res.index),
          first: classicmodel.isFirst(res.index)
        })
      })
    }
    
  },

  
  methods: {
    onClickLike:function(event){
      // console.log(event);
      let behavior = event.detail.behavior;
      likemodel.like(behavior,this.data.classicData.id,this.data.classicData.type);
    },
  
    onPrev:function(event){
      this._updateClassic('Prev')
    },
  
    onNext:function(event){
      this._updateClassic('Next')
    },
  
    _updateClassic: function (nextOrPrevious) {
      const index = this.data.classicData.index
      classicmodel.getClassic(index, nextOrPrevious, (res) => {
        this._getLikeStatus(res.id, res.type)
        this.setData({
          classicData: res,
          latest: classicmodel.isLatest(res.index),
          first: classicmodel.isFirst(res.index)
        })
      })
    },
  
    _getLikeStatus: function (artID, category) {
      likemodel.getClassicLikeStatus(artID, category,(res) => {
        this.setData({
          likeCount: res.fav_nums,
          likeStatus: res.like_status
        })
      })
    }
  }
})