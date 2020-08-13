package com.neusoft.bsp.multientitys;

import com.neusoft.bsp.mvoinfo.entity.BrdBrand;
import com.neusoft.bsp.mvoproduct.entity.ImgImage;

public class BrdImg {
    public BrdBrand brdBrand;
    public ImgImage imgImage;

    public BrdBrand getBrdBrand() {
        return brdBrand;
    }

    public void setBrdBrand(BrdBrand brdBrand) {
        this.brdBrand = brdBrand;
    }

    public ImgImage getImgImage() {
        return imgImage;
    }

    public void setImgImage(ImgImage imgImage) {
        this.imgImage = imgImage;
    }

    @Override
    public String toString() {
        return "BrdImg{" +
                "brdBrand=" + brdBrand.toString() +
                ", imgImage=" + imgImage.toString() +
                '}';
    }
}
