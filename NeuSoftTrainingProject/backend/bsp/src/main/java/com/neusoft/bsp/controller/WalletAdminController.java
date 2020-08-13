package com.neusoft.bsp.controller;

import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.exception.BusinessException;
import com.neusoft.bsp.wallet.entity.Wta;
import com.neusoft.bsp.wallet.entity.Wtr;
import com.neusoft.bsp.wallet.service.WafService;
import com.neusoft.bsp.wallet.service.WtaService;
import com.neusoft.bsp.wallet.service.WtrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/walletAdminController")
public class WalletAdminController extends BaseController {

    @Autowired
    WtrService wtrService;

    @Autowired
    WtaService wtaService;

    @Autowired
    WafService wafService;

    //查询所有用户钱包流水信息
    @RequestMapping("/searchAllWorkFlow")
    public BaseModelJson<Map<String,Object>> searchAllWorkFlow(){
        List<Wtr> resultWtr = wtrService.searchAllWtrByFilter();
        List<Wta> resultWta = wtaService.searchAllWtaByFilter();
        Map<String, Object> resultMap = new HashMap();//结果map
        resultMap.put("wtr",resultWtr);
        resultMap.put("wta",resultWta);

        BaseModelJson<Map<String,Object>> result = new BaseModelJson();//返回结果
        result.data = resultMap;
        if (resultWtr.size() != 0 && resultWta.size() != 0){
            result.message = "success";
            result.code = 200;
        }else if (resultWtr.size() == 0 && resultWta.size() != 0){
            result.message = "no wtr result";
            result.code = 201;
        }else if (resultWtr.size() != 0 && resultWta.size() == 0){
            result.message = "no wta result";
            result.code = 202;
        }else {
            result.message = "no result";
            result.code = 203;
        }

        return result;
    }

    //审核(更新wta和wtr的status以及waf的available_money,depositing_money,withdrawing_money)
    @RequestMapping("/auditWorkFlow")
    public BaseModel auditWorkFlow(@RequestBody Wtr wtr, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            throw BusinessException.AUDIT_ERROR.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{wtr});
        }else {
            //检查数据库中wta和wtr的status是否为申请状态(status=2)
            int transaction_id = wtr.getTransaction_id();//接受到的transaction_id
//            int status = wtr.getStatus();//接收要修改为到的status
            int wtrStatus = wtrService.searchWtrById(transaction_id).getStatus();
            int wtaStatus = wtaService.searchWtaByWtrId(transaction_id).getStatus();

            Wta correspondingWta = wtaService.searchWtaByWtrId(transaction_id);
            BigDecimal a_money = correspondingWta.getAvailable_money_after();
            BigDecimal d_money = correspondingWta.getDepositing_money_after();
            BigDecimal w_money = correspondingWta.getWithdrawing_money_after();

            int buyer_id = wtaService.searchWtaByWtrId(transaction_id).getBuyer_id();

            BaseModel result = new BaseModel();
            if (wtrStatus == 2 && wtaStatus == 2){//全部为申请态，可以进行审核操作修改
                int i = wtrService.updateWtrStatus(transaction_id, 4);
                int j = wtaService.updateWtaStatus(transaction_id, 4);
                int k = wafService.updateMoney(buyer_id,a_money,d_money,w_money);

                if (i == 1 && j ==1 && k == 1){
                    result.code = 200;
                    result.message = "success";
                }else {
                    result.code = 202;
                    result.message = "failed";
                }
            }else {//状态有问题不与申请审核操作
                result.code = 201;
                result.message = "status error";
            }
            return result;
        }
    }


}
