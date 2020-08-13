import request from '@/utils/request'

export function searchUnionInfo(username) {
  return request({
    url: 'brdProductManagementController/searchUnionInfo',
    method: 'post',
    params: {username}
  })
}

export function deletePro(proid) {
  return request({
    url: 'brdProductManagementController/deleteProduct',
    method: 'post',
    params: {proid}
  })
}