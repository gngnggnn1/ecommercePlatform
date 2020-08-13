import request from '@/utils/request'

export function deleteByUrl(url) {
  return request({
    // url: '/vue-element-admin/user/info',
    url: 'menu/deleteByUrl',
    method: 'post',
    params: { url }
  })
}
