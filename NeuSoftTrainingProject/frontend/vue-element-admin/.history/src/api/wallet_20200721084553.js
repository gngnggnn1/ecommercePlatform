import request from '@/utils/request'

export function getWalletInfo(account_name) {
  return request({
    url: 'walletController/getWalletInfo',
    method: 'post',
    params: {account_name}
  })
}

export function registerWallet(data) {
    return request({
      url: 'walletController/registerWallet',
      method: 'post',
      data
    })
  }

  export function chargeAndDeposit(data) {
    return request({
      url: 'walletController/chargeAndDeposit',
      method: 'post',
      data
    })
  }
  

export function searchBusinessFlow(data) {
    return request({
      url: 'walletController/searchBusinessFlow',
      method: 'post',
      data
    })
  }
  
  
  
