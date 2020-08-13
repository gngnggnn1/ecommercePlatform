import request from '../utils/request'

export function getInfo() {
  return request({
    url: 'walletAdminController/searchAllWorkFlow',
    method: 'post',
    data: {
    }
  })
}

export function shipConfirm(transaction_id,status) {
  return request({
    url: 'walletAdminController/auditWorkFlow',
    method: 'post',
    data: {
      transaction_id,
      status
    }
  })
}
