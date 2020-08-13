import request from '../utils/request'
export function getProducts(params) {
  return request({
    url: 'http://localhost:8088/getProduct',
    method: 'get',
	data: params
  })
}

