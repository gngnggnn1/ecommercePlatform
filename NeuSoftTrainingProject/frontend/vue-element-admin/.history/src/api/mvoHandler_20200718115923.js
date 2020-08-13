import request from '@/utils/request'

export function searchUnionInfo(data) {
  return request({
    url: 'brdProductManagementController/searchUnionInfo',
    method: 'post',
    data
  })
}