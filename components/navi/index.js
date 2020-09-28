// components/navi/index.js
Component({
  /**
   * 组件的属性列表
   */
  properties: {
    title:String,
    first:Boolean,
    latest:Boolean
  },

  /**
   * 组件的初始数据
   */
  data: {
    disLeftSrc: 'images/triangle.dis@left.png',
    leftSrc: 'images/triangle@left.png',
    disRightSrc: 'images/triangle.dis@right.png',
    rightSrc: 'images/triangle@right.png'
  },

  /**
   * 组件的方法列表
   */
  methods: {
    onLeft:function(event){  
      if(!this.properties.latest){  //如果是最新的一期，则按钮不能点击
        this.triggerEvent('Prev',{},{}) //自定义事件，用于到页面中执行
      }
    },
    onRight:function(event){
      if(!this.properties.first){   //如果是最后一期，则按钮不能点击
        this.triggerEvent('Next',{},{})
      }
    }
  }
})
