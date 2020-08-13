package com.neusoft.bsp.mvoproduct.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoproduct.entity.ImgImage;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ImgImageMapper extends BaseMapper<String, ImgImage> {
    //根据pro_id(pro_product)查询对应的图片列表(img_image的entity_id)
    List<ImgImage> searchImg(int pro_id);

    int insertUnion(String pro_id, String uri);

    int deleteByProId(String pro_id);

    //根据brd_id(brd_brand)查询对应的图片(img_image的entity_id)
    ImgImage searchBrdImg(int brd_id);

    //新增img根据uri和brd_id(entity_id)
    int addBrdImg(@Param("uri") String uri, @Param("brd_id") int brd_id);

    //修改img根据uri和brd_id(entity_id)
    int updateBrdImg(@Param("uri") String uri, @Param("brd_id") int brd_id);

    //根据brd_id(brd_brand)删除对应的图片(img_image的entity_id)
    int deleteBrdImg(int brd_id);

}
