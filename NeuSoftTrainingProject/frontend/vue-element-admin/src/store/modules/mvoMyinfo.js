import {getMan,getBrands,insertBrand,updateBrand,deleteBrd,addMan} from "../../api/mvoHandler";

const mvoInfo = {
  actions : {

    GetMan({commit},username){
      return new Promise((resolve,reject) => {
        getMan(username).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    GetBrands({commit},man_id){
      return new Promise((resolve,reject) => {
        getBrands(man_id).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    InsertBrand({ commit },brandData){
      return new Promise((resolve,reject) => {
        insertBrand(brandData.brdBrand,brandData.imgImage).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    UpdateBrand({ commit },brandData){
      return new Promise((resolve,reject) => {
        updateBrand(brandData.brdBrand,brandData.imgImage).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },
    DeleteBrd({ commit },brd_id){
      return new Promise((resolve,reject) => {
        deleteBrd(brd_id).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },
    AddMan({ commit },manData){
      return new Promise((resolve,reject) => {
        addMan(manData.manManufacturer,manData.user).then(response => {
          // commit('')
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    }



  }

}

export default mvoInfo
