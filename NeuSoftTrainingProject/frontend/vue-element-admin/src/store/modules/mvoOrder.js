import {getSao,shipSao,cancelSao,getExpress} from "@/api/mvoHandler";

const mvoOrder = {

  actions: {
    GetSao({commit},username){
      return new Promise((resolve,reject) => {
        getSao(username).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    ShipSao({commit},sao_id){
      return new Promise((resolve,reject) => {
        shipSao(sao_id).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    CancelSao({commit},sao_id){
      return new Promise((resolve,reject) => {
        cancelSao(sao_id).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    GetExpress({commit},expressInfo){
      return new Promise((resolve,reject) => {
        getExpress(expressInfo.com,expressInfo.nu,expressInfo.receiverPhone,expressInfo.senderPhone).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    }





  }
}

export default mvoOrder
