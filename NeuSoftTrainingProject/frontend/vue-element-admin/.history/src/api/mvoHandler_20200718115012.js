import request from '@/utils/request'

export function seacrchUnionInfo(data) {
  return request({
    url: 'brdProductManagementController/searchUnionInfo',
    method: 'post',
    data
  })
}