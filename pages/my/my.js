import {
  ClassicModel
} from '../../models/classic.js'
import {
  BookModel
} from '../../models/book.js'

import {
  promisic
} from '../../utils/common.js'

const classicModel = new ClassicModel()
const bookModel = new BookModel()

Page({

  /**
   * 页面的初始数据
   */
  data: {
    authorized: false,
    userInfo: null,
    bookCount: 0,
    classics: null
  },

  onGetUserInfo(event) {
    const userInfo = event.detail.userInfo
    if (userInfo) {
      this.setData({
        userInfo,
        authorized: true
      })
    }
  },

  onJumpToAbout(event) {
    wx.navigateTo({
      url: '/pages/about/about',
    })
  },

  onStudy(event) {
    wx.navigateTo({
      url: '/pages/course/course',
    })
  },


  userAuthorized() {
    wx.getSetting({
      success: data => {
        if (data.authSetting['scope.userInfo']) {
          wx.getUserInfo({
            success: data => {
              this.setData({
                authorized: true,
                userInfo: data.userInfo
              })
            }
          })
        }
      }
    })
  },

  onLoad(){
    this.userAuthorized()
    this.getMyBookCount()
    this.getMyFavor()
  },

  onShow(options) {
    // this.userAuthorized1()
    // this.getMyBookCount()
    // this.getMyFavor()
  },

  getMyBookCount() {
    bookModel.getMyBookCount()
      .then(res => {
        this.setData({
          bookCount: res.count
        })
      })
  },

  getMyFavor() {
    classicModel.getMyFavor(res => {
      this.setData({
        classics: res
      })
    })
  },

  onJumpToDetail(event){
    const cid = event.detail.cid
    const type = event.detail.type
    wx.navigateTo({
      url:`/pages/classic-detail/classic-detail?cid=${cid}&type=${type}`
    })
  },
  

  userAuthorized1() {
    promisic(wx.getSetting)()
      .then(data => {
        if (data.authSetting['scope.userInfo']) {
          return promisic(wx.getUserInfo)()
        }
        return false
      })
      .then(data => {
        if (!data) return 
        this.setData({
          authorized: true,
          userInfo: data.userInfo
        })
      })
  },

})



