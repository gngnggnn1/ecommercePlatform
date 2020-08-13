package com.neusoft.bsp.mvoinfor.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoinfor.entity.ImgImage;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ImgImageMapper extends BaseMapper<String, ImgImage> {
    //根据pro_id(pro_product)查询对应的图片列表(img_image的entity_id)
    List<ImgImage> searchImg(int pro_id);

}
