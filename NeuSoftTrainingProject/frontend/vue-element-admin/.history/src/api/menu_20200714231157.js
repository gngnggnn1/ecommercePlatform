import request from '@/utils/request'

export function deleteByUrlAndName(url) {
  return request({
    // url: '/vue-element-admin/user/info',
    url: 'menu/deleteByUrlAndName',
    method: 'post',
    params: { url, name }
  })
}
