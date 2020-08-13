package com.neusoft.bsp.controller;


import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.exception.BusinessException;
import com.neusoft.bsp.common.validationGroup.InsertGroup;
import com.neusoft.bsp.common.validationGroup.UpdateGroup;
import com.neusoft.bsp.multientitys.UserManManufacturer;
import com.neusoft.bsp.mvoinfo.entity.ManManufacturer;
import com.neusoft.bsp.mvoinfo.service.ManManufacturerService;
import com.neusoft.bsp.user.entity.User;
import com.neusoft.bsp.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@CrossOrigin
@RestController
@RequestMapping("/manManufacturer")
public class ManManufacturerController extends BaseController {

    @Autowired
    ManManufacturerService manManufacturerService;

    @Autowired
    UserService userService;


    @RequestMapping("/getMVOReturnInfo")//获得当前登陆用户(MVO)的ID并且查询对应的(man_manufacturer)公司信息
    public BaseModelJson<ManManufacturer> getMVOReturnInfo(@RequestBody User user){//前端传来的当前User信息(username)

        int man_id = userService.getBuyerIdByUserName(user.getUsername());
        BaseModelJson<ManManufacturer> result = new BaseModelJson();

        if (man_id != -1){
            result.data = manManufacturerService.findInfoByMVO(man_id);
        }

        result.code = 200;
//        System.out.println(result.data.toString());
        return result;//前端去判断result.data是不是为null

    }

    //前端传回来的JSON中Timestamp的需要"YYYY-MM-DD HH-MM-SS"格式
    @RequestMapping("/addManInfo")//当前MVO不存在公司信息的时候插入(man_manufacturer)新的公司信息
    public BaseModel addManInfo(@Validated({InsertGroup.class, UpdateGroup.class}) @RequestBody UserManManufacturer UmInfo, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            throw BusinessException.INSERT_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[] {UmInfo.toString()});
        }else {
            BaseModel result = new BaseModel();
//            System.out.println(UmInfo.getManManufacturer());
            int i = manManufacturerService.insert(UmInfo.getManManufacturer());
            int j = userService.updateBuyerId(UmInfo.getUser().getUsername(),manManufacturerService.searchLatestManiId());

            if (i == 1 && j == 1) {
                result.code = 200;
                result.message = "success";
                return result;
            } else {
                throw BusinessException.INSERT_OR_UPDATE_FAIL;
            }
        }
    }



}
