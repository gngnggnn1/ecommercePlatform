package com.neusoft.bsp.controller;

import com.neusoft.bsp.codemaster.entity.Cdm;
import com.neusoft.bsp.codemaster.service.CdmService;
import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/cdmController")
public class CdmController extends BaseController {

    @Autowired
    CdmService cdmService;

    //查询cdm
    @RequestMapping("/searchAllCdm")
    public BaseModelJson<List<Cdm>> searchAllCdm(){
        List<Cdm> resultList = cdmService.searchAllCdm();
        BaseModelJson<List<Cdm>> result = new BaseModelJson();
        result.data = resultList;
        if (resultList.size() != 0){
            result.message = "success";
            result.code = 200;
        }else {
            result.message = "no result";
            result.code = 201;
        }
        return result;
    }

    //新增cdm
    @RequestMapping("/insertCdm")
    public BaseModel insertCdm(@RequestBody Cdm cdm, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            throw BusinessException.INSERT_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{cdm});
        }else {
            int i = cdmService.insertCdm(cdm);
            BaseModel result = new BaseModel();
            if (i == 1){
                result.code = 200;
                result.message = "success";
            }else {
                result.code = 201;
                result.message = "failed";
            }
            return result;
        }
    }

    //修改cdm
    @RequestMapping("/updateCdm")
    public BaseModel updateCdm(@RequestBody Cdm cdm, BindingResult bindingResult){//前端传回修改值和所有未改变的值
        if (bindingResult.hasErrors()){
            throw BusinessException.UPDATE_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{cdm});
        }else {
            int i = cdmService.updateCdm(cdm);
            BaseModel result = new BaseModel();
            if (i == 1){
                result.code = 200;
                result.message = "success";
            }else {
                result.code = 201;
                result.message = "failed";
            }
            return result;
        }
    }

    //删除cdm
    @RequestMapping("/deleteCdm")
    public BaseModel deleteCdm(@RequestBody Cdm cdm, BindingResult bindingResult){//前端传回修改值和所有未改变的值
        if (bindingResult.hasErrors()){
            throw BusinessException.DELETE_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{cdm});
        }else {
            int i = cdmService.deleteCdm(cdm.getCdm_id());
            BaseModel result = new BaseModel();
            if (i == 1){
                result.code = 200;
                result.message = "success";
            }else {
                result.code = 201;
                result.message = "failed";
            }
            return result;
        }
    }

    //根据param_cd查询par
    @RequestMapping("/searchCdmByCt")
    public BaseModelJson<List<Cdm>> searchCdmByCt(@RequestBody Cdm cdm){

        List<Cdm> resultList = cdmService.searchCdmByCt("%"+cdm.getCode_type()+"%");//模糊匹配
        BaseModelJson<List<Cdm>> result = new BaseModelJson();
        result.data = resultList;
        if (resultList.size() != 0){
            result.message = "success";
            result.code = 200;
        }else {
            result.message = "no result";
            result.code = 201;
        }

        return result;
    }


}
