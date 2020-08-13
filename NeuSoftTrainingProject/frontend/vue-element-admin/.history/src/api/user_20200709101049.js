import request from '@/utils/request'

export function getAuthMenu(uname) {
  return request({
    url: 'menu/getAuthMenu',
    method: 'post',
    params: {uname}
  })
}

export function login(data) {
  return request({
    url: 'user/checkUser',
    method: 'post',
    data
  })
}

export function getInfo(name) {
  return request({
    // url: '/vue-element-admin/user/info',
    url: 'user/getInfo',
    method: 'post',
    params: { name }
  })
}

export function logout() {
  return request({
    url: 'user/logout',
    method: 'post'
  })
}
