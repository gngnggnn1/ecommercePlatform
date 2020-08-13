import request from '../utils/request'
export function deletePro(params) {
  return request({
    url: 'http://localhost:8888/deleteWishListProduct',
    method: 'post',
    data: params
  })
}
export function getWishList(params) {
  return request({
    url: 'http://localhost:8888/getWishList',
    method: 'post',
    data: params
  })
}
