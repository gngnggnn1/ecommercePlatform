import {getInfo,shipConfirm} from "../../api/wallet-adminHandler";

const walletAdmin = {

  actions: {
    GetInfo({ commit }){
      return new Promise((resolve,reject) => {
        getInfo().then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },
    ShipConfirm({ commit },wtrInfo){
      return new Promise((resolve,reject) => {
        shipConfirm(wtrInfo.transaction_id,wtrInfo.status).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    }


  }

}

export default walletAdmin
