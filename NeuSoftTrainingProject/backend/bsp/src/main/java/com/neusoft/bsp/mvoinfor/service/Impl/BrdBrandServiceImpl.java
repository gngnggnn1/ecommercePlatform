package com.neusoft.bsp.mvoinfor.service.Impl;

import com.neusoft.bsp.mvoinfor.entity.BrdBrand;
import com.neusoft.bsp.mvoinfor.mapper.BrdBrandMapper;
import com.neusoft.bsp.mvoinfor.service.BrdBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("BrdBrandService")
public class BrdBrandServiceImpl implements BrdBrandService {

    @Autowired
    BrdBrandMapper brdBrandMapper;

    @Override
    public List<BrdBrand> getAllBrand(int man_id) {
        return brdBrandMapper.getAllBrand(man_id);
    }


    @Override
    public int insertBrand(BrdBrand brdBrand) {
        return brdBrandMapper.insertBrand(brdBrand);
    }

    @Override
    public int deleteBrand(int brd_id) {
        return brdBrandMapper.deleteBrand(brd_id);
    }

    @Override
    public int updateBrand(BrdBrand brdBrand) {
        return brdBrandMapper.updateBrand(brdBrand);
    }
}
