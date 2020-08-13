import request from '../utils/request'
export function searchawaPay(params) {
  return request({
    url: 'http://localhost:8088/getAwaitingOrder',
    method: 'post',
    data: params
  })
}
export function getSha(params) {
  return request({
    url: 'http://localhost:8088/getPayDetail',
    method: 'post',
    data: params
  })
}
export function searchawaShip(params) {
  return request({
    url: 'http://localhost:8088/getAwaitingShipmentOrder',
    method: 'post',
    data: params
  })
}
export function searchShip(params) {
  return request({
    url: 'http://localhost:8088/getShippedOrder',
    method: 'post',
    data: params
  })
}
export function searchComplete(params) {
  return request({
    url: 'http://localhost:8088/getCompleteOrder',
    method: 'post',
    data: params
  })
}
export function searchCancel(params) {
  return request({
    url: 'http://localhost:8088/getCanceledOrder',
    method: 'post',
    data: params
  })
}
export function getOrderDetail(params) {
  return request({
    url: 'http://localhost:8088/getOrderDetail',
    method: 'post',
    data: params
  })
}
export function PayOrder(params) {
  return request({
    url: 'http://localhost:8088/pay',
    method: 'post',
    data: params
  })
}
export function getShipDetail(params) {
  return request({
    url: 'http://localhost:8088/getDELIVERY_STS',
    method: 'post',
    data: params
  })
}
