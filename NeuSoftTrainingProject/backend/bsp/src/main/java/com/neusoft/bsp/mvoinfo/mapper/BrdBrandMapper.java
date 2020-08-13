package com.neusoft.bsp.mvoinfo.mapper;

import com.neusoft.bsp.common.base.BaseMapper;
import com.neusoft.bsp.mvoinfo.entity.BrdBrand;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BrdBrandMapper extends BaseMapper<String, BrdBrand> {
    //根据man_id查询品牌信息(brd_brand表)
    List<BrdBrand> getAllBrand(int man_id);
    //新增品牌信息
    int insertBrand(BrdBrand brdBrand);
    //删除品牌信息
    int deleteBrand(int brd_id);
    //修改品牌信息
    int updateBrand(BrdBrand brdBrand);

    //查询新增最大的id
    int searchLastedId();

}
