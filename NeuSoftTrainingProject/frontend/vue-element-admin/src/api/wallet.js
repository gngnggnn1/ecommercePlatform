import request from '@/utils/request'

export function getWalletInfo(account_name) {
  return request({
    url: 'walletController/getWalletInfo',
    method: 'post',
    params: {account_name}
  })
}

export function registerWallet(data) {
    return request({
      url: 'walletController/registerWallet',
      method: 'post',
      data
    })
  }

  export function chargeAndDeposit(data) {
    return request({
      url: 'walletController/chargeAndDeposit',
      method: 'post',
      data
    })
  }
  

export function searchBusinessFlow(data) {
    return request({
      url: 'walletController/searchBusinessFlow',
      method: 'post',
      data
    })
  }


 export function dateFormat(fmt, date) {
    let ret;
    const opt = {
        "Y+": date.getFullYear().toString(),        // 年
        "m+": (date.getMonth() + 1).toString(),     // 月
        "d+": date.getDate().toString(),            // 日
        "H+": date.getHours().toString(),           // 时
        "M+": date.getMinutes().toString(),         // 分
        "S+": date.getSeconds().toString()          // 秒
        // 有其他格式化字符需求可以继续添加，必须转化成字符串
    };
    for (let k in opt) {
        ret = new RegExp("(" + k + ")").exec(fmt);
        if (ret) {
            fmt = fmt.replace(ret[1], (ret[1].length == 1) ? (opt[k]) : (opt[k].padStart(ret[1].length, "0")))
        };
    };
    return fmt;
}


//将两个json对象合并
export function twoJsonMerge(json1,json2){
	var length1 = 0,length2 = 0,jsonStr,str;
	for(var ever in json1) length1++;
	for(var ever in json2) length2++; 
	if(length1 && length2)str = ',';
	else str = '';
	jsonStr = ((JSON.stringify(json1)).replace(/,}/,'}') + (JSON.stringify(json2)).replace(/,}/,'}')).replace(/}{/,str);
    return JSON.parse(jsonStr);
}


  
  
  
