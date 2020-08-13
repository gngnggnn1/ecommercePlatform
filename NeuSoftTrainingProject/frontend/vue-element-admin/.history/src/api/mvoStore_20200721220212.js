import request from '../utils/request'
export function getAmaList(params) {
  return request({
    url: 'http://localhost:8888/getAmazonStore',
    method: 'post',
    data: params
  })
}
export function getEbayList(params) {
  return request({
    url: 'http://localhost:8888/getEbayStore',
    method: 'post',
    data: params
  })
}
export function saveStore(params) {
  return request({
    url: 'http://localhost:8888/addStore',
    method: 'post',
    data: params
  })
}
