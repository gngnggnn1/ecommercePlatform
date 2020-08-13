import request from '../utils/request'
export function deletePro(params) {
  return request({
    url: 'http://localhost:8088/deleteWishListProduct',
    method: 'post',
    data: params
  })
}
export function getWishList(params) {
  return request({
    url: 'http://localhost:8088/getWishList',
    method: 'post',
    data: params
  })
}
