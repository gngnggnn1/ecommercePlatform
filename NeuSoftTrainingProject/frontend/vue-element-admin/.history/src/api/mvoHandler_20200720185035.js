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

  export function updateGoodsMain(data) {
    return request({
      url: 'brdProductManagementController/updateGoodsMain',
      method: 'post',
      data
    })
  }

  export function updateGoodsInfo(data) {
    return request({
      url: 'brdProductManagementController/updateGoodsInfo',
      method: 'post',
      data
    })
  }

  export function insertGoodsInfo(data) {
    return request({
      url: 'brdProductManagementController/insertGoodsInfo',
      method: 'post',
      data
    })
  }