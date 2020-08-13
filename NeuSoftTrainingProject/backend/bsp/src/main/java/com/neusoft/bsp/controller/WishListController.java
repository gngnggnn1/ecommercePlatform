package com.neusoft.bsp.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.base.BaseModelJson1;
import com.neusoft.bsp.wishlist.service.WishListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
public class WishListController {
    @Autowired
    WishListService wishListService;

    @PostMapping("/getWishList")
    public String getProductDetail(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsr_ID");
        System.out.println("IDDDDDDDDDDDDDDDDDDDDDDDDDD      " + DSR_ID);
        List<HashMap> response = new LinkedList<>();
        List<String> res = wishListService.getProductID(DSR_ID);
        for(String resi:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            responseMap.put("proname", wishListService.getProductName(resi));
            responseMap.put("imgSrc", wishListService.getProductImgUrl(resi));
            responseMap.put("proprice", wishListService.getProductPrice(resi));
            responseMap.put("prosku", wishListService.getProductSKU(resi));
            responseMap.put("proID", resi);
            response.add(responseMap);
        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/deleteWishListProduct")
    public String deleteWishListProduct(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsr_ID");
        System.out.println("DSRRRRRRRRRRRRRRRRRRR   " + DSR_ID);
        String PRO_ID = param.get("proID");
        System.out.println("PROOOOOOOOOO     " + PRO_ID);
        wishListService.deleteProduct(DSR_ID, PRO_ID);
        List<HashMap> response = new LinkedList<>();
        List<String> res = wishListService.getProductID(DSR_ID);
        HashMap<String, Object> responseMap = new HashMap<>();
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }
}
