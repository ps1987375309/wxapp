import { KeywordModel } from "../../models/keyword.js"
import {
  BookModel
} from '../../models/book.js'

import {
  paginationBev
} from '../behaviors/pagination.js'

const keywordModel = new KeywordModel()
const bookModel = new BookModel()
Component({
  /**
   * 组件的属性列表
   */
  behaviors: [paginationBev],
  properties: {
    more: {  //控制瀑布流加载
      type: String,
      observer: 'loadMore'
    }
  },

  /**
   * 组件的初始数据
   */
  data: {
    historyWords: [],
    hotWords: [],
    searching: false,
    q: "",
    loading: false,   //用来控制禁止重复发送请求
    loadingCenter: false
  },

  attached() {
    this.setData({
      historyWords: keywordModel.getHistory()
    })
    keywordModel.getHot().then(res => {
      // console.log(res)
      this.setData({
        hotWords: res.hot
      })
    })
  },

  /**
   * 组件的方法列表
   */
  methods: {
    onCancel(event) {
      this.initialize()
      this.triggerEvent('ClickCancel', {}, {})
    },
    onConfirm(event) {
      // console.log(event)
      this._showResult()
      this._showLoadingCenter()
      const q = event.detail.value || event.detail.text
      this.setData({
        q: q
      })
      // keywordModel.addToHistory(q)
      bookModel.search(0, q)
        .then(res => {
          // console.log(res)
          this.setMoreData(res.books)
          this.setTotal(res.total)
          keywordModel.addToHistory(q)
          this._hideLoadingCenter()
        })
    },

    onDelete(event) {
      // console.log(event)
      this.initialize()
      this.setData({
        q: ''
      })
      this._closeResult()
    },

    loadMore() {
      // console.log("已经到底部了，加载新数据")
      if(!this.data.q){
        return
      }
      if(this.isLocked()){
        return
      }
      // const length = this.data.dataArray.length   //获取当前已经加载数据的长度，用作下次加载的下标
      const length = this.getCurrentStart()
      if(this.hasMore()){
        this.locked()
        bookModel.search(length, this.data.q)     //获取新加载的数据
        .then(
          res => {
            //合并之前和刚加载的数据
            // const tempArray = this.data.dataArray.concat(res.books) 
            this.setMoreData(res.books)
            this.setTotal(res.total)
            this.unLocked()
          },() => {
            this.unLocked()
          }
        )
      }
    },
    _showResult() {
      this.setData({
        searching: true
      })
    },

    _closeResult() {
      this.setData({
        searching: false
      })
    },
    _showLoadingCenter() {
      this.setData({
        loadingCenter: true
      })
    },

    _hideLoadingCenter() {
      this.setData({
        loadingCenter: false
      })
    },
  }
})
