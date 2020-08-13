package com.neusoft.bsp.multientitys;

import com.neusoft.bsp.wallet.entity.Waa;
import com.neusoft.bsp.wallet.entity.Waf;
import com.neusoft.bsp.wallet.entity.Wta;
import com.neusoft.bsp.wallet.entity.Wtr;

public class WaaWafWtrWta {

    public Waa waa;
    public Waf waf;
    public Wta wta;
    public Wtr wtr;

    public Waa getWaa() {
        return waa;
    }

    public void setWaa(Waa waa) {
        this.waa = waa;
    }

    public Waf getWaf() {
        return waf;
    }

    public void setWaf(Waf waf) {
        this.waf = waf;
    }

    public Wta getWta() {
        return wta;
    }

    public void setWta(Wta wta) {
        this.wta = wta;
    }

    public Wtr getWtr() {
        return wtr;
    }

    public void setWtr(Wtr wtr) {
        this.wtr = wtr;
    }

    @Override
    public String toString() {
        return "WaaWafWtrWta{" +
                "waa=" + waa +
                ", waf=" + waf +
                ", wta=" + wta +
                ", wtr=" + wtr +
                '}';
    }
}
