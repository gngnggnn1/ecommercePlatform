import request from '@/utils/request'

export function getAuthMenu(username) {
  return request({
    url: 'menu/getAuthMenu',
    method: 'post',
    params: {username}
  })
}

export function login(data) {
  return request({
    url: '/login',
    method: 'post',
    data
  })
}

export function getInfo(username) {
  return request({
    // url: '/vue-element-admin/user/info',
    url: 'user/getInfo',
    method: 'get',
    params: { username }
  })
}

export function logout() {
  return request({
    url: 'user/logout',
    method: 'post'
  })
}
