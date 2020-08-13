import request from '@/utils/request'

export function searchUnionInfo(username) {
  return request({
    url: 'brdProductManagementController/searchUnionInfo',
    method: 'post',
    params: {username}
  })
}