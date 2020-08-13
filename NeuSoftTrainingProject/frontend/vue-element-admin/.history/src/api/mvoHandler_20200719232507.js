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

export function changeStatus(data) {
    return request({
      url: 'brdProductManagementController/changeStatus',
      method: 'post',
      data
    })
  }

  export function getAllOptions() {
    return request({
      url: 'brdProductManagementController/getAllOptions',
      method: 'post',
    })
  }