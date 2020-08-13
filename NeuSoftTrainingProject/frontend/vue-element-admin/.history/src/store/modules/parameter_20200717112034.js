import { getPars,insertPar,updatePar,searchPar,deletePar } from "../../api/parameterHandler";

const parameter = {
  actions: {
    GetPars({ commit }){
      return new Promise((resolve,reject) => {
        getPars().then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    InsertPar({ commit },parInfo){
      return new Promise((resolve,reject) => {
        insertPar(parInfo.param_cd, parInfo.param_value, parInfo.description, parInfo.created_by,
                  parInfo.creation_date, parInfo.last_update_by, parInfo.last_update_date, parInfo.call_cnt,
                  parInfo.remark, parInfo.sts_cd).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    UpdatePar({ commit },parInfo){
      return new Promise((resolve,reject) => {
        updatePar(parInfo.par_id, parInfo.param_cd, parInfo.param_value, parInfo.description, parInfo.created_by,
          parInfo.creation_date, parInfo.last_update_by, parInfo.last_update_date, parInfo.call_cnt,
          parInfo.remark, parInfo.sts_cd).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    SearchPar({ commit },param_cd){
      return new Promise((resolve,reject) => {
        searchPar(param_cd).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    DeletePar({ commit },par_id){
      return new Promise((resolve,reject) => {
        deletePar(par_id).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    }


  }


}

export default parameter
