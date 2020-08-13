package com.neusoft.bsp.controller;


import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.exception.BusinessException;
import com.neusoft.bsp.common.validationGroup.InsertGroup;
import com.neusoft.bsp.multientitys.WaaWafWtrWta;
import com.neusoft.bsp.wallet.entity.Waa;
import com.neusoft.bsp.wallet.entity.Waf;
import com.neusoft.bsp.wallet.entity.Wta;
import com.neusoft.bsp.wallet.entity.Wtr;
import com.neusoft.bsp.wallet.service.WaaService;
import com.neusoft.bsp.wallet.service.WafService;
import com.neusoft.bsp.wallet.service.WtaService;
import com.neusoft.bsp.wallet.service.WtrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/walletController")
public class WalletController extends BaseController {

    @Autowired
    WaaService waaService;

    @Autowired
    WafService wafService;

    @Autowired
    WtrService wtrService;

    @Autowired
    WtaService wtaService;

    //查询用户钱包信息
    @PostMapping("/getWalletInfo")
    public BaseModelJson<Map> getWalletInfo(@RequestParam String account_name){

        BaseModelJson<Map> result = new BaseModelJson();
        Map resultMap = new HashMap();
        Waa resultWaa = waaService.searchWaaByName(account_name);//查询对应的钱包账户

        if (resultWaa != null){//如果有对应的钱包账户
            Waf resultWaf = wafService.searchWafById(resultWaa.getBuyer_id());//继续查询对应的唯一waf
            resultMap.put("waa", resultWaa);
            resultMap.put("waf", resultWaf);
            result.data = resultMap;
            result.message = "success";
            result.code = 200;
        }else {
            resultMap.put("waa", null);
            resultMap.put("waf", null);
            result.data = resultMap;
            result.message = "未查询到账户信息，跳转注册";
            result.code = 201;
        }
        return result;
    }

    //钱包注册(插入waa和waf)
    @RequestMapping("/registerWallet")
    public BaseModel registerWallet(@Validated(InsertGroup.class) @RequestBody WaaWafWtrWta w,
                                    BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            throw BusinessException.INSERT_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{w.toString()});
        } else {
            BaseModel result = new BaseModel();
            int i = waaService.insertWaa(w.getWaa());
            int j = wafService.insertWaf(w.getWaf());
            if (i == 1 && j == 1){
                result.code = 200;
                result.message = "success";
            }else if(i == 1 && j != 1) {
                result.code = 201;
                result.message = "waf insert failed";
            }else if (i != 1 && j == 1){
                result.code = 202;
                result.message = "waa insert failed";
            }else if(i != 1 && j != 1){
                result.code = 203;
                result.message = "waa & waf insert failed";
            }
            return result;
        }
    }

    //提现和充值
    @RequestMapping("/chargeAndDeposit")
    public BaseModel chargeAndDeposit(@RequestBody WaaWafWtrWta multiResult,
                                      BindingResult bindingResult){
        //权限判断
        int flag = waaService.searchAuthority(multiResult.getWaa());
        BaseModel result = new BaseModel();

        if (flag != 0){//权限判断成功
            if (bindingResult.hasErrors()){
                throw BusinessException.INSERT_OR_UPDATE_FAIL.newInstance(this.getErrorResponse(bindingResult),
                        new Object[]{multiResult.toString()});
            }else {//更新waf, 插入wtr和wta
                try{
                    System.out.println("=====");
                    wafService.updateWaf(multiResult.getWaf());//更新waf
                    wtrService.insertWtr(multiResult.getWtr());//插入wtr
                    System.out.println(wtrService.getMaxId());
                    multiResult.getWta().setTransaction_id(wtrService.getMaxId());
                    wtaService.insertWta(multiResult.getWta());//插入wta
                    result.code = 200;
                    result.message = "success";
                }catch (Exception e){
                    e.printStackTrace();
                }
            }

        }else {
            result.code = 201;
            result.message = "judge authority failed";
        }

        return result;
    }

    //查看流水记录
    @RequestMapping("/searchBusinessFlow")
    public BaseModelJson<Map<String,Object>> searchBusinessFlow(@RequestBody Waa waa, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            throw BusinessException.BUYERID_NULL_ERROR.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{waa.getBuyer_id()});

        }else {
            Map<String,Object> resultMap = new HashMap();
            List<Wtr> resultWtr = wtrService.searchWtrByBuyerId(waa.getBuyer_id());//查询wtr
            List<Wta> resultWta = wtaService.searchWtaByBuyerId(waa.getBuyer_id());//查询wta
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
                result.message = "no wtr & wta result";
                result.code = 203;
            }
            return result;
        }


    }



}
