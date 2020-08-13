package com.neusoft.bsp.mvoinfor.service;

import com.neusoft.bsp.mvoinfor.entity.BrdBrand;
import com.neusoft.bsp.mvoinfor.mapper.BrdBrandMapper;

import java.util.List;

public interface BrdBrandService {

    List<BrdBrand> getAllBrand(int man_id);

    int insertBrand(BrdBrand brdBrand);

    int deleteBrand(int brd_id);

    int updateBrand(BrdBrand brdBrand);
}
