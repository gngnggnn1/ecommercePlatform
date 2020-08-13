package com.neusoft.bsp.mvoproduct.service.Impl;

import com.neusoft.bsp.mvoproduct.entity.ImgImage;
import com.neusoft.bsp.mvoproduct.mapper.ImgImageMapper;
import com.neusoft.bsp.mvoproduct.service.ImgImageService;
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

    @Override
    public int insertUnion(String pro_id, String uri) {
        return imgImageMapper.insertUnion(pro_id, uri);
    }

    @Override
    public int deleteByProId(String pro_id) {
        return imgImageMapper.deleteByProId(pro_id);
    }

    @Override
    public ImgImage searchBrdImg(int brd_id) {
        return imgImageMapper.searchBrdImg(brd_id);
    }

    @Override
    public int addBrdImg(String uri, int brd_id) {
        return imgImageMapper.addBrdImg(uri, brd_id);
    }

    @Override
    public int updateBrdImg(String uri, int brd_id) {
        return imgImageMapper.updateBrdImg(uri, brd_id);
    }

    @Override
    public int deleteBrdImg(int brd_id) {
        return imgImageMapper.deleteBrdImg(brd_id);
    }

}
