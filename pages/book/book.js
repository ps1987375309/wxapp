// pages/book/book.js
import { BookModel } from "../../models/book.js"
import {
  random
} from '../../utils/common.js'
const bookModel = new BookModel()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    books: [],
    searching: false,
    more: ""
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    const hotList = bookModel.getHotList()
    hotList.then(
      (res) => {
        this.setData({
          books: res
        })
      },
    )
    /**
     * 以下是promise示例代码
     */
    //promise中的参数是一个函数 ()=>{},函数中带两个参数resolve,reject
    const promise = new Promise(
      //三种状态 pending(进行中)  fulfilled(已成功)  rejected(已失败)
      //resolve将进行中变成已成功
      //reject将进行中变成已失败
      (resolve, reject) => {
        wx.getSystemInfo({
          success: (res) => {
            resolve(res)
          },
          fail: (error) => {
            reject(error)
          }
        })
      }
    )
    //promise.then接收两个回调函数,第一个成功，第二个失败
    promise.then(
      (res) => {
        // console.log(res)
      },
      (error) => {
        // console.log(error)
      }
    )

  },

  onSearching(event) {
    this.setData({
      searching: true
    })
  },

  onCancel(event) {
    this.setData({
      searching: false
    })
  },

  onReachBottom() {
    // console.log("已经到最底部了")
    this.setData({
      more: random(16)
    })
  }

})