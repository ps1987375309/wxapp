// pages/book-detail/book-detail.js
import {
  BookModel
}
  from "../../models/book.js"

import {
  LikeModel
}
  from "../../models/like.js"
const bookModel = new BookModel()
const likeModel = new LikeModel()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    comments: [],
    bookDetail: "",
    likeStatus: false,
    likeCount: 0,
    posting: false
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.showLoading()   //数据加载等待显示
    const bid = options.bid  //获取url参数
    // console.log(bid)
    const detail = bookModel.getDetail(bid)
    const comments = bookModel.getComments(bid)
    const likeStatus = bookModel.getLikeStatus(bid)

    // detail.then(res => {
    //   this.setData({
    //     bookDetail: res
    //   })
    // })
    // comments.then(res => {
    //   this.setData({
    //     comments: res.comments    //二维数组
    //   })
    // })
    // likeStatus.then(res => {
    //   this.setData({
    //     likeStatus: res.like_status,
    //     likeCount: res.fav_nums
    //   })
    // })

    /**
     * 效果等同于上面三个函数
     * 优点在于可以同时监控三个回调完成的状态(因为是异步回调，如果单独写就不能同时监控)
     */
    Promise.all([detail, comments, likeStatus])
      .then(res => {
        // console.log(res)
        this.setData({
          bookDetail: res[0],
          comments: res[1].comments,
          likeStatus: res[2].like_status,
          likeCount: res[2].fav_nums
        })
        wx.hideLoading()
      })

  },

  onLike(event) {
    // console.log(event);
    const like_or_cancel = event.detail.behavior
    likeModel.like(like_or_cancel, this.data.bookDetail.bid, 400)
  },

  onFakePost(event) {
    this.setData({
      posting: true
    })
  },

  onCancel(event) {
    this.setData({
      posting: false
    })
  },

  onPost(event) {
    const comment = event.detail.text || event.detail.value
    if (!comment) {
      return
    }
    if (comment.length > 12) {
      wx.showToast({
        title: '短评最多12个字',
        icon: 'none'
      })
      return
    }
    bookModel.postComment(this.data.bookDetail.id, comment)
      .then(res => {
        wx.showToast({
          title: '+ 1',
          icon: "none"
        })
        this.data.comments.unshift({
          content: comment,
          nums: 1
        })
        this.setData({
          comments: this.data.comments,
          posting: false
        })
      })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})