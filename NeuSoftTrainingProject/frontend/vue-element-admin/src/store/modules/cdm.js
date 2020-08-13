import {getCdms,searchCdm,insertCdm,updateCdm,deleteCdm} from "../../api/cdmHandler";

const cdm = {
  actions : {

    GetCdms({ commit }){
      return new Promise((resolve,reject) => {
        getCdms().then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    SearchCdm({ commit },code_type){
      return new Promise((resolve,reject) => {
        searchCdm(code_type).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    InsertCdm({ commit },cdmInfo){
      return new Promise((resolve,reject) => {
        insertCdm(cdmInfo.code_type,cdmInfo.description,cdmInfo.type_cd,cdmInfo.code_val,cdmInfo.seq_no,
                  cdmInfo.created_by,cdmInfo.creation_date,cdmInfo.last_update_by,cdmInfo.last_update_date,
                  cdmInfo.call_cnt,cdmInfo.remark,cdmInfo.sts_cd).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    UpdateCdm({ commit },cdmInfo){
      return new Promise((resolve,reject) => {
        updateCdm(cdmInfo.cdm_id,cdmInfo.code_type,cdmInfo.description,cdmInfo.type_cd,cdmInfo.code_val,cdmInfo.seq_no,
                  cdmInfo.created_by,cdmInfo.creation_date,cdmInfo.last_update_by,cdmInfo.last_update_date,
                  cdmInfo.call_cnt,cdmInfo.remark,cdmInfo.sts_cd).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    DeleteCdm({ commit },par_id){
      return new Promise((resolve,reject) => {
        deleteCdm(par_id).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },





  }

}

export default cdm
