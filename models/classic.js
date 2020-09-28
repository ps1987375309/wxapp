import {HTTP} from "../utils/http.js"

class ClassicModel extends HTTP {
  getLatest(sCallback){  //将异步返回结果放在sCallback中，在其他地方调用这个方法的时候就可以获取这个返回值  如：classicmodel.getLatest((res)  中的res就是返回值res
    this.request({
      url:'index',
      success:(res)=>{
        // console.log(res)
        sCallback(res)
        this._setLatestIndex(res.index)
        let key = this._getKey(res.index)
        wx.setStorageSync(key, res)
      }
    })
  }

  getClassic(index, nextOrPrevious, sCallback) {
    // 缓存中寻找 or API 写入到缓存中
    // key 确定key
    let key = nextOrPrevious == 'Prev' ?
        this._getKey(index + 1) : this._getKey(index - 1)
    let new_index = nextOrPrevious == 'Prev' ?
      (index + 1) : (index - 1)
    let classic = wx.getStorageSync(key)
    if (!classic) {
      this.request({
        url: nextOrPrevious,
        method:'POST',
        data:{
          index:new_index
        },
        success: (res) => {
          wx.setStorageSync(
            this._getKey(res.index), res
          )
          sCallback(res)
        }
      })
    } else {
      sCallback(classic)
    }
  }

  isFirst(index) {
    return index == 1 ? true : false
  }

  isLatest(index) {
    let latestIndex = this._getLatestIndex()
    return latestIndex == index ? true : false
  }

  _getLatestIndex() {
    const index = wx.getStorageSync('latest')
    return index
  }
  _setLatestIndex(index) {
    wx.setStorageSync('latest', index)
  }

  _getKey(index){   //index 表示第几期刊
    const key = 'classic-'+index;
    return key;
  }

  getMyFavor(success) {
    const params = {
      url: 'classic_favor',
      success: success
    }
    this.request(params)
  }

  getById(cid, type, success) {
    let params = {
        url: 'classic_detail?cid='+cid+"&type="+type,
        success: success
    }
    this.request(params)
}
}

export {ClassicModel}