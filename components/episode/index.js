// components/episode/index.js
Component({
  /**
   * 组件的属性列表
   */
  properties: {
    // index:Number     //初始化，默认number是0   注意：这个方法不能在data中使用
    index:{
      type:String,
      observer:function(newVal,oldVal,changedPath){   //属性值发生变化时，会自动调用该函数
        let val = newVal < 10 ? '0'+ newVal:newVal;
        // console.log(val);
        this.setData({
          _index:val
        });
      }
    }
  },

  /**
   * 组件的初始数据
   */
  data: {
    months: [
      '一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月',
      '十二月'
    ],
    year:0,
    month:"",
    _index:''
  },

  attached:function(){
    // console.log(this.properties),
    // console.log(this.data)
    let date = new Date()
    let year = date.getFullYear()
    let month = date.getMonth()
    this.setData({
      year:year,
      month:this.data.months[month]
    })
  },

  /**
   * 组件的方法列表
   */
  methods: {

  }
})
