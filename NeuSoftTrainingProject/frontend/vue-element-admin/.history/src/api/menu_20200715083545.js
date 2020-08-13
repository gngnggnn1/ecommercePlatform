import request from '@/utils/request'

export function deleteByUrlAndName(url, name) {
  return request({
    // url: '/vue-element-admin/user/info',
    url: 'menu/deleteByUrlAndName',
    method: 'post',
    params: { url, name }
  })
}

export function updateById(form) {
    return request({
        url: 'menu/updateById',
        method: 'post',
        params: form
    })
}
