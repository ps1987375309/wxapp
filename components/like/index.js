// components/like/index.js
Component({
  /**
   * 组件的属性列表
   */
  properties: {
    like:{
      type:Boolean,  //默认值是false
      // value:false,
      // observer:function(){}
    },
    count:{
      type:Number     //默认值是0
    },
    readOnly:{
      type:Boolean
    }
  },

  /**
   * 组件的初始数据
   */
  data: {
    yesSrc:'images/like.png',
    noSrc:'images/like@dis.png'
  },

  /**
   * 组件的方法列表
   */
  methods: {
    onLike:function(event){
      // console.log(event);
      if(this.properties.readOnly){
        return
      }
      let like = this.properties.like;
      let count = this.properties.count;
      count = like?count-1:count+1;
      this.setData({
        count:count,
        like:!like  //取反
      });
      let behavior = this.properties.like?"like":"cancel";  //判断用户点赞还是取消点赞
      //自定义事件
      this.triggerEvent(
        'ClickLike',  //自定义事件名称
        {
          behavior:behavior
        }, //自定义属性，会显示在数据detail中
        {} 
      );
    }
  }
})
