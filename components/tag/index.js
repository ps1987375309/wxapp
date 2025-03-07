// components/tag/index.js
Component({
  options:{
    multipleSlots: true    //启用插槽，用于动态添加html标签
  },
  externalClasses:['tag-class'],
  /**
   * 组件的属性列表
   */
  properties: {
    text:String
  },

  /**
   * 组件的初始数据
   */
  data: {

  },

  /**
   * 组件的方法列表
   */
  methods: {
    onTap(event){
      this.triggerEvent('tapping',{
        text:this.properties.text
      })
    }
  }
})
