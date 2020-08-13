import request from '../utils/request'

export function getCdms() {
  return request({
    url: 'cdmController/searchAllCdm',
    method: 'post',
    data: {
    }
  })
}

export function searchCdm(code_type) {
  return request({
    url: 'cdmController/searchCdmByCt',
    method: 'post',
    data: {
      code_type
    }
  })
}

export function insertCdm(code_type,description,type_cd,code_val,seq_no,
                          created_by,creation_date,last_update_by,last_update_date,
                          call_cnt,remark,sts_cd) {
  return request({
    url: 'cdmController/insertCdm',
    method: 'post',
    data: {
      code_type,
      description,
      type_cd,
      code_val,
      seq_no,
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


export function updateCdm(cdm_id,code_type,description,type_cd,code_val,seq_no,
                          created_by,creation_date,last_update_by,last_update_date,
                          call_cnt,remark,sts_cd) {
  return request({
    url: 'cdmController/updateCdm',
    method: 'post',
    data: {
      cdm_id,
      code_type,
      description,
      type_cd,
      code_val,
      seq_no,
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

export function deleteCdm(cdm_id) {
  return request({
    url: 'cdmController/deleteCdm',
    method: 'post',
    data: {
      cdm_id
    }
  })
}
