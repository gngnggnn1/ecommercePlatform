import request from '../utils/request'
export function getDsr(params) {
  return request({
    url: 'http://localhost:8088/getDsr',
    method: 'post',
    data: params
  })
}