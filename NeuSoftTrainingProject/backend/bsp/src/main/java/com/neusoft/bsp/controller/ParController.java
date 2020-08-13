package com.neusoft.bsp.controller;

import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.exception.BusinessException;
import com.neusoft.bsp.parameter.entity.Par;
import com.neusoft.bsp.parameter.service.ParService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/parController")
public class ParController extends BaseController {

    @Autowired
    ParService parService;

    //查询par
    @RequestMapping("/searchAllPar")
    public BaseModelJson<List<Par>> searchAllPar(){
        List<Par> resultList = parService.searchAllPar();
        BaseModelJson<List<Par>> result = new BaseModelJson();
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

    //新增par
    @RequestMapping("/insertPar")
    public BaseModel insertPar(@RequestBody Par par, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            throw BusinessException.INSERT_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{par});
        }else {
            int i = parService.insertPar(par);
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

    //修改par
    @RequestMapping("/updatePar")
    public BaseModel updatePar(@RequestBody Par par, BindingResult bindingResult){//前端传回修改值和所有未改变的值
        if (bindingResult.hasErrors()){
            throw BusinessException.UPDATE_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{par});
        }else {
            int i = parService.updatePar(par);
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

    //删除par
    @RequestMapping("/deletePar")
    public BaseModel deletePar(@RequestBody Par par, BindingResult bindingResult){//前端传回修改值和所有未改变的值
        if (bindingResult.hasErrors()){
            throw BusinessException.DELETE_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{par});
        }else {
            int i = parService.deletePar(par.getPar_id());
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
    @RequestMapping("/searchParByCd")
    public BaseModelJson<List<Par>> searchParByCd(@RequestBody Par par){

        List<Par> resultList = parService.searchParByCd("%"+par.getParam_cd()+"%");//模糊匹配
        BaseModelJson<List<Par>> result = new BaseModelJson();
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
