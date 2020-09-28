import {
  HTTP
} from "../utils/http-p.js"

class BookModel extends HTTP {
  getHotList() {
    // return this.request(  //直接传值  request(url,data={},method="GET"){}
    //   "hot_list",
    //   {
    //     name: "eee",
    //     age: "23"
    //   },
    //   "POST"
    // )

    // return this.request({  //对象传值，request({url,data={},method="GET"}){}
    //   url: "hot_list",
    //   date:{
    //     name: "eee",
    //     age: "23"
    //   },
    //   method: "POST"
    // })
    return this.request({
      url: "hot_list"
    })
  }

  getDetail(bid) {
    return this.request({
      url: 'book_detail',
      data: {
        bid: bid
      }
    })
  }
  getLikeStatus(bid) {
    return this.request({
      url: 'book_favor',
      data: {
        bid: bid
      }
    })
  }

  getComments(bid) {
    return this.request({
      url: 'book_short_comment',
      data: {
        bid: bid
      }
    })
  }

  postComment(bid, comment) {
    return this.request({
      url: 'add_short_comment',
      method: 'POST',
      data: {
        book_id: bid,
        content: comment
      }
    })
  }

  search(start, q) {
    return this.request({
      url: 'book_search?summary=1',
      data: {
        q: q,
        start: start
      }
    })
  }

  getMyBookCount() {
    return this.request({
      url: 'favor_bookcount'
    })
  }

}

export { BookModel }