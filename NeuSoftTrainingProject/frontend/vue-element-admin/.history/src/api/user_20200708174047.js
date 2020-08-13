import request from '@/utils/request'

export function getAuthMenu() {
  return request({
    url: 'menu/getAuthMenu',
    method: 'post'
  })
}

export function login(data) {
  return request({
    url: 'user/checkUser',
    method: 'post',
    data
  })
}

export function getInfo(token) {
  return request({
    // url: '/vue-element-admin/user/info',
    url: 'user/getInfo',
    method: 'get',
    params: { token }
  })
}

export function logout() {
  return request({
    url: 'user/logout',
    method: 'post'
  })
}
