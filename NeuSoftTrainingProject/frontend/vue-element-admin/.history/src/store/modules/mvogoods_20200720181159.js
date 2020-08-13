
const state = {
  pro_id:'',
  man_id:''
}

const mutations = {
    setPro_id: (state, pro_id) => {
        state.pro_id = pro_id
      },
    setMan_id: (state, man_id) => {
        state.man_id = man_id
    }
}



export default {
  namespaced: false,
  state,
  mutations
}
