import {HTTP} from "../utils/http.js"

class LikeModel extends HTTP {
  like(behavior,artID,category){
    let url = behavior == "like"?'addLike':'cancelLike'
    this.request({
      url:url,
      method:'POST',
      data:{
        art_id:artID,
        type:category
      }
    })
  }

  getClassicLikeStatus(artID,category,sCallback){
    this.request({
        url:'favor',
        method:'POST',
        data:{
          id:artID,
          type:category
        },
        success:sCallback
    })
  }
}
export {LikeModel}