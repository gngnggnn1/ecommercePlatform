import request from '../utils/request'

export function getPars() {
  return request({
    url: 'parController/searchAllPar',
    method: 'post',
    data: {
    }
  })
}

export function insertPar(param_cd, param_value, description, created_by,
  creation_date, last_update_by, last_update_date, call_cnt,
  remark, sts_cd) {
  return request({
    url: 'parController/insertPar',
    method: 'post',
    data: {
      param_cd,
      param_value,
      description,
      created_by,
      creation_date,
      last_update_by,
      last_update_date,
      call_cnt,
      remark,
      sts_cd
    }
  })
}

export function updatePar(par_id, param_cd, param_value, description, created_by,
                          creation_date, last_update_by, last_update_date, call_cnt,
                          remark, sts_cd) {
  return request({
    url: 'parController/updatePar',
    method: 'post',
    data: {
      par_id,
      param_cd,
      param_value,
      description,
      created_by,
      creation_date,
      last_update_by,
      last_update_date,
      call_cnt,
      remark,
      sts_cd
    }
  })
}

export function searchPar(param_cd) {
  return request({
    url: 'parController/searchParByCd',
    method: 'post',
    data: {
      param_cd
    }
  })
}

export function deletePar(par_id) {
  return request({
    url: 'parController/deletePar',
    method: 'post',
    data: {
      par_id
    }
  })
}
