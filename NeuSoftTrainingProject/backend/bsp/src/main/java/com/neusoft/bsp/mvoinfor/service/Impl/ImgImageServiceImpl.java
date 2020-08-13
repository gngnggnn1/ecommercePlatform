package com.neusoft.bsp.mvoinfor.service.Impl;

import com.neusoft.bsp.mvoinfor.entity.ImgImage;
import com.neusoft.bsp.mvoinfor.mapper.ImgImageMapper;
import com.neusoft.bsp.mvoinfor.service.ImgImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ImgImageService")
public class ImgImageServiceImpl implements ImgImageService {

    @Autowired
    ImgImageMapper imgImageMapper;

    @Override
    public List<ImgImage> searchImg(int pro_id) {
        return imgImageMapper.searchImg(pro_id);
    }
}
