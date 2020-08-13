
const state = {
  pro_id:'',
  man_id:'',
  pat:''
}

const mutations = {
    setPro_id: (state, pro_id) => {
        state.pro_id = pro_id
      },
    setMan_id: (state, man_id) => {
        state.man_id = man_id
    },
    setMan_id: (state, pat) => {
        state.pat = pat
    }
}



export default {
  namespaced: false,
  state,
  mutations
}
