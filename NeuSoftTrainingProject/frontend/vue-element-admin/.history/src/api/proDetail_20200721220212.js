import request from '../utils/request'
export function addWish(params) {
  return request({
    url: 'http://localhost:8888/addToWishList',
    method: 'post',
    data: params
  })
}
export function dropShip(params) {
  return request({
    url: '/dropShip',
    method: 'post',
    data: params
  })
}
export function getDetail(params) {
  return request({
    url: 'http://localhost:8888/getProductDetail',
    method: 'post',
    data: params
  })
}
export function pushToStore(params) {
  return request({
    url: 'http://localhost:8888/addToStore',
    method: 'post',
    data: params
  })
}
export function getamaList(params) {
  return request({
    url: '/getamaList',
    method: 'post',
    data: params
  })
}
export function getebayList(params) {
  return request({
    url: '/getebayList',
    method: 'post',
    data: params
  })
}

