package com.neusoft.bsp.express.entity;

import lombok.Data;

/**
 * @author: lucifer
 * @date: 2019/7/23
 * @description: 请求参数
 */

@Data
public class ExpressListReqBody {

   /* 名称	类型	是否必须	描述
    expName	STRING	可选	快递/物流公司名称，比如传入 顺丰
    maxSize	LONG	可选	分页时,每页返回的最大记录数
    page	LONG	可选	分页的页数*/

    private String expName;

    private Long maxSize;

    private Long page;

}
