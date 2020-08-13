package com.neusoft.bsp.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.base.BaseModelJson1;
import com.neusoft.bsp.prodect.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

@CrossOrigin
@RestController
public class ProductController {
    @Autowired
    ProductService productService;

    @GetMapping ("/getProduct")
    public String getProduct(){
        int code = 200;
        List<HashMap> response = new LinkedList<>();
        List<String> res = productService.getProID();
        for(String resi:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            String title = productService.getProductTitle(resi);
            String price = productService.getProductPrice(resi);
            String productImgUrl = productService.getProductImgUrl(resi);
            responseMap.put("title", title);
            responseMap.put("price", price);
            responseMap.put("imgSrc", productImgUrl);
            response.add(responseMap);
        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

}
