import request from '@/utils/request'

export function getAuthMenu(){
  return {
      "code": 0,
      "data": {
        "menuList": [
          {
            "menu_id": "31",
            "menu_name": "mvo",
            "parent_id": null,
            "menu_order": 10,
            "menu_icon": "",
            "menu_type": "",
            "children": [
              {
              "menu_id": "32",
              "menu_name": "mvo-我的信息",
              "parent_id": "31",
              "menu_order": 11,
              "menu_icon": "",
              "menu_type": "",
              "children": []
              },
             {
              "menu_id": "33",
              "menu_name": "mvo-商品录入",
              "parent_id": "31",
              "menu_order": 12,
              "menu_icon": "",
              "menu_type": "",
              "children": []
              }
            ]
          },
        ]
      }
    }

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
