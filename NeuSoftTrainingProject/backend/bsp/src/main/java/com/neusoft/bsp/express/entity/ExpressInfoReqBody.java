package com.neusoft.bsp.express.entity;

import lombok.Data;

/**
 * @author: lucifer
 * @date: 2019/7/23
 * @description: 快递物流节点跟踪 请求参数
 */
@Data
public class ExpressInfoReqBody {

   /* 名称	类型	是否必须	描述
    com	STRING	必选	快递公司字母简称,可以从接口"快递公司查询" 中查到该信息 如不知道快递公司名,可以使用"auto"代替,此时将自动识别快递单号所属公司（成功率99%，因为一个单号规则可能会映射到多个快递公司。如果识别失败，系统将返回可能的快递公司列表）。不推荐大面积使用auto，建议尽量传入准确的公司编码。
    nu	STRING	必选	单号
    receiverPhone	STRING	可选	收件人手机号后四位，顺丰需要填写(手机号后四位填一个就行，多填以寄件人为准)
    senderPhone	STRING	可选	寄件人手机号后四位,顺丰需要填写(手机号后四位填一个就行，多填以寄件人为准)*/

    private String com;
    private String nu;
    private String receiverPhone;
    private String senderPhone;


}
