import request from '@/utils/request'

export function searchUnionInfo(username) {
  return request({
    url: 'brdProductManagementController/searchUnionInfo',
    method: 'post',
    params: {username}
  })
}

export function deletePro(pro_id) {
  return request({
    url: 'brdProductManagementController/deleteProduct',
    method: 'post',
    params: {pro_id}
  })
}