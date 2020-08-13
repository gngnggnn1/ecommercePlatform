package com.neusoft.bsp.express.service;


import com.alibaba.fastjson.JSONObject;
import com.neusoft.bsp.express.entity.ExpressInfoReqBody;
import com.neusoft.bsp.express.entity.ExpressListReqBody;

import java.io.IOException;

/**
 * @author: lucifer
 * @date: 2019/7/23
 * @description:
 */
public interface ExpressService {

    /**
     * 快递公司查询
     *
     * @param reqBody
     * @return
     */
    JSONObject getExpressList(ExpressListReqBody reqBody) throws IOException;

    /**
     * 快递物流节点跟踪
     *
     * @param reqBody
     * @return
     * @throws IOException
     */
    JSONObject getExpressInfo(ExpressInfoReqBody reqBody) throws Exception;

    /**
     * 单号查快递公司名
     *
     * @param nu
     * @return
     */
    JSONObject fetchCom(String nu);
}
