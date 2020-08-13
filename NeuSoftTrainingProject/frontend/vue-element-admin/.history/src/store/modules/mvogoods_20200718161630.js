
state = {
  pro_id:''
}

mutations = {
    setPro_id: (state, pro_id) => {
        state.pro_id = pro_id
      },
}



export default {
  namespaced: true,
  state,
  mutations
}
