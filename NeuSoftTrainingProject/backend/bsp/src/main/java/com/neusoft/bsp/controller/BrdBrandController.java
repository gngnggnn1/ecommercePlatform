//package com.neusoft.bsp.controller;
//
//
//import com.neusoft.bsp.common.base.BaseController;
//import com.neusoft.bsp.common.base.BaseModel;
//import com.neusoft.bsp.common.base.BaseModelJson;
//import com.neusoft.bsp.common.exception.BusinessException;
//import com.neusoft.bsp.common.validationGroup.DeleteGroup;
//import com.neusoft.bsp.common.validationGroup.InsertGroup;
//import com.neusoft.bsp.common.validationGroup.UpdateGroup;
//import com.neusoft.bsp.mvoinfo.entity.BrdBrand;
//import com.neusoft.bsp.mvoinfo.service.BrdBrandService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.validation.BindingResult;
//import org.springframework.validation.annotation.Validated;
//import org.springframework.web.bind.annotation.CrossOrigin;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.util.List;
//
//@CrossOrigin
//@RestController
//@RequestMapping("/brdBrandController")
//public class BrdBrandController extends BaseController {
//
//    @Autowired
//    BrdBrandService brdBrandService;
//
//    //查询当前MVO所有的品牌信息(根据man_id查询brd_brand)
//    @RequestMapping("/getBrandInfo")
//    public BaseModelJson<List<BrdBrand>> getBrandInfo(@RequestBody int man_id){
//        List<BrdBrand> resultList = brdBrandService.getAllBrand(man_id);
//        if (resultList.size() != 0){
//            BaseModelJson<List<BrdBrand>> result = new BaseModelJson();
//            result.data = resultList;
//            result.code = 200;
//            result.message = "success";
//            return result;
//        }else {
//            BaseModelJson<List<BrdBrand>> empty = new BaseModelJson();
//            empty.data = null;
//            empty.code = 200;
//            empty.message = "no result";
//            return empty;
//        }
//    }
//
//    //新增品牌信息
//    @RequestMapping("/addBrand")
//    public BaseModel addBrand(@Validated({InsertGroup.class}) @RequestBody BrdBrand brdBrand, BindingResult bindingResult){
//        if (bindingResult.hasErrors()) {
//            throw BusinessException.INSERT_FAIL.newInstance(this.getErrorResponse(bindingResult),
//                    new Object[]{brdBrand.toString()});
//        } else {
//            BaseModel result = new BaseModel();
//            int i = brdBrandService.insertBrand(brdBrand);
//            if (i == 1) {
//                result.code = 200;
//                result.message = "success";
//                return result;
//            } else {
//                throw BusinessException.INSERT_FAIL;
//            }
//        }
//    }
//
//    //删除品牌信息
//    @RequestMapping("/deleteBrand")
//    public BaseModel deleteBrand(@Validated({DeleteGroup.class}) @RequestBody BrdBrand brdBrand, BindingResult bindingResult){
//        if (bindingResult.hasErrors()) {
//            throw BusinessException.BRDID_NULL_ERROR.newInstance(this.getErrorResponse(bindingResult),
//                    new Object[]{brdBrand.toString()});
//        } else {
//            BaseModel result = new BaseModel();
//            int i = brdBrandService.deleteBrand(brdBrand.getBrd_id());
//            if (i == 1) {
//                result.code = 200;
//                result.message = "success";
//                return result;
//            } else {
//                throw BusinessException.DELETE_FAIL;
//            }
//        }
//    }
//
//    //修改品牌信息
//    @RequestMapping("/updateBrand")
//    public BaseModel updateBrand(@Validated({UpdateGroup.class}) @RequestBody BrdBrand brdBrand, BindingResult bindingResult) {  //bindingResult用于获得validate的反馈信息
//        if (bindingResult.hasErrors()) {
//            throw BusinessException.BRDID_NULL_ERROR.newInstance(this.getErrorResponse(bindingResult),
//                    new Object[]{brdBrand.toString()});
//        } else {
//            BaseModel result = new BaseModel();
//            int i =brdBrandService.updateBrand(brdBrand);
//            if(i==1){
//                result.code = 200;
//                result.message = "success";
//                return result;
//            }else{
//                throw BusinessException.UPDATE_FAIL;
//            }
//        }
//    }
//
//
//
//}
package com.neusoft.bsp.controller;


import com.neusoft.bsp.common.base.BaseController;
import com.neusoft.bsp.common.base.BaseModel;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.exception.BusinessException;
import com.neusoft.bsp.common.validationGroup.DeleteGroup;
import com.neusoft.bsp.common.validationGroup.InsertGroup;
import com.neusoft.bsp.common.validationGroup.UpdateGroup;
import com.neusoft.bsp.multientitys.BrdImg;
import com.neusoft.bsp.mvoinfo.entity.BrdBrand;
import com.neusoft.bsp.mvoinfo.service.BrdBrandService;
import com.neusoft.bsp.mvoproduct.entity.ImgImage;
import com.neusoft.bsp.mvoproduct.service.ImgImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@CrossOrigin
@RestController
@RequestMapping("/brdBrandController")
public class BrdBrandController extends BaseController {

    @Autowired
    BrdBrandService brdBrandService;
    @Autowired
    ImgImageService imgImageService;

    //查询当前MVO所有的品牌信息(根据man_id查询brd_brand)
    @RequestMapping("/getBrandInfo")
    public BaseModelJson<Map> getBrandInfo(@RequestBody BrdBrand brdBrand){
        List<BrdBrand> resultBrd = brdBrandService.getAllBrand(brdBrand.getMan_id());
        List<ImgImage> resultImg = new ArrayList();
        for(BrdBrand brand: resultBrd){
            resultImg.add(imgImageService.searchBrdImg(brand.getBrd_id()));
        }

        Map resultMap = new HashMap();
        resultMap.put("brd",resultBrd);
        resultMap.put("img",resultImg);
//        System.out.println(resultMap);

        BaseModelJson<Map> result = new BaseModelJson();//返回的JSON字符串
        result.data = resultMap;


        if (resultBrd.size() != 0){
            result.code = 200;
            result.message = "success";
        }else {
            result.code = 201;
            result.message = "no result";
        }
        return result;
    }

    //新增品牌信息
    @RequestMapping("/addBrand")
    public BaseModel addBrand(@Validated({InsertGroup.class}) @RequestBody BrdImg brdImg, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            throw BusinessException.INSERT_FAIL.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{brdImg.toString()});
        } else {
            BaseModel result = new BaseModel();
            int i = brdBrandService.insertBrand(brdImg.getBrdBrand());
            int brd_id = brdBrandService.searchLastedId();
            int j = imgImageService.addBrdImg(brdImg.getImgImage().getUri(), brd_id);
            if (i == 1 && j == 1) {
                result.code = 200;
                result.message = "success";
                return result;
            } else {
                throw BusinessException.INSERT_FAIL;
            }
        }
    }

    //删除品牌信息
    @RequestMapping("/deleteBrand")
    public BaseModel deleteBrand(@Validated({DeleteGroup.class}) @RequestBody BrdBrand brdBrand, BindingResult bindingResult){
        if (bindingResult.hasErrors()) {
            throw BusinessException.BRDID_NULL_ERROR.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{brdBrand.toString()});
        } else {
            BaseModel result = new BaseModel();
            int brd_id = brdBrand.getBrd_id();
            int j = 0;
            if (imgImageService.searchBrdImg(brd_id) != null){
                j = imgImageService.deleteBrdImg(brd_id);
            }else {
                j = 1;
            }

            int i = brdBrandService.deleteBrand(brd_id);

            if (i == 1 && j == 1) {
                result.code = 200;
                result.message = "success";
                return result;
            } else {
                throw BusinessException.DELETE_FAIL;
            }
        }
    }

    //修改品牌信息
    @RequestMapping("/updateBrand")
    public BaseModel updateBrand(@Validated({UpdateGroup.class}) @RequestBody BrdImg brdImg, BindingResult bindingResult) {  //bindingResult用于获得validate的反馈信息
        if (bindingResult.hasErrors()) {
            throw BusinessException.BRDID_NULL_ERROR.newInstance(this.getErrorResponse(bindingResult),
                    new Object[]{brdImg.toString()});
        } else {
            BaseModel result = new BaseModel();
            int i = brdBrandService.updateBrand(brdImg.getBrdBrand());
            int brd_id = brdImg.getBrdBrand().getBrd_id();
            int j = imgImageService.updateBrdImg(brdImg.getImgImage().getUri(), brd_id);
            if(i==1 && j == 1){
                result.code = 200;
                result.message = "success";
                return result;
            }else{
                throw BusinessException.UPDATE_FAIL;
            }
        }
    }



}
