<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />
          商品信息录入</small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <el-form
      :model="ruleForm"
      :rules="rules"
      ref="ruleForm"
      label-width="150px"
      class="demo-ruleForm"
    >
      <el-form-item prop="title">
        <span slot="label">
          商品标题
        </span>
        <el-input class="formInput" v-model="ruleForm.title"></el-input>
      </el-form-item>
      <div style="margin-left:10%; margin-top:25px; margin-bottom:20px; font-size: 14px;"> 
          体积重
        </div>
      <el-form-item prop="length">
        <span slot="label">
          长
        </span>
        <el-input class="formInput" v-model="ruleForm.length" style="width: 100px"></el-input>
        <span style="margin: 10px">cm</span>
      </el-form-item>
      <el-form-item prop="width">
        <span slot="label">
          宽
        </span>
        <el-input class="formInput" v-model="ruleForm.width" style="width: 100px"></el-input>
        <span style="margin: 10px">cm</span>
      </el-form-item>
      <el-form-item prop="height">
        <span slot="label">
          高
        </span>
        <el-input class="formInput" v-model="ruleForm.height" style="width: 100px"></el-input>
        <span style="margin: 10px">cm</span>
      </el-form-item>
      <el-form-item prop="weight">
        <span slot="label">
          重量
        </span>
        <el-input class="formInput" v-model="ruleForm.weight" style="width: 100px"></el-input>
        <span style="margin: 10px">kg</span>
      </el-form-item>
      
      <el-form-item prop="sku_cd">
        <span slot="label">
         商品skuCode编码
        </span>
        <el-input class="formInput" v-model="ruleForm.sku_cd" style="width: 200px"></el-input>
      </el-form-item>
      <el-form-item prop="upc">
        <span slot="label">
         upc编码
        </span>
        <el-input class="formInput" v-model="ruleForm.upc" style="width: 200px; margin-bottom: 0px;"></el-input>
      </el-form-item>

      <div style="margin-left:18%; margin-top:0px; margin-bottom:30px; font-size: 14px; color: blue"> 
          品牌商可以选择不提供UPC和EAN码 eBay网店不一定需要UPC码，amazon网店通常自己再另外为借卖商品申请UPC码，这样可以让商品独立销售，如果amazon网店不为借卖商品另外申请UPC码，将以跟卖商品销售商品。UPC码也是用于商品的条码，主要用于美国和加拿大地区，UPC条码是由美国统一代码委员会制定的一种条码。出口到北美地区为了适应北美地区的需要，也需要申请UPC条码，UPC条码也有标准版和缩短版两种，标准版由12位数字构成，缩短版由8位数字构成。
        </div>

        <el-form-item prop="ean">
        <span slot="label">
         ean编码
        </span>
        <el-input class="formInput" v-model="ruleForm.ean" style="width: 200px; margin-bottom: 0px;"></el-input>
      </el-form-item>

      <div style="margin-left:18%; margin-top:0px; margin-bottom:30px; font-size: 14px; color: blue"> 
          品牌商可以选择不提供UPC和EAN码 eBay网店不一定需要UPC码，amazon网店通常自己再另外为借卖商品申请UPC码，这样可以让商品独立销售，如果amazon网店不为借卖商品另外申请UPC码，将以跟卖商品销售商品。EAN码(英文全称: European Article Number)由前缀码、厂商识别码、商品项目代码和校验码组成。前缀码是国际EAN组织标识各会员组织的代码，我国为690-695；标准版表示13位数字，又称为EAN13码，缩短码表示8位数字，又称EAN8。两种条码的最后一位为校验码，由前面的12位或7位数字计算得出。
        </div>

        <el-form-item prop="model">
        <span slot="label">
         商品型号model
        </span>
        <el-input class="formInput" v-model="ruleForm.model" style="width: 200px; margin-bottom: 0px;"></el-input>
      </el-form-item>

      <el-form-item prop="retail_price">
        <span slot="label">
         借卖价格
        </span>
        <el-input class="formInput" v-model="ruleForm.retail_price" style="width: 200px; margin-bottom: 0px;"></el-input>
      </el-form-item>

      <el-form-item prop="warranty_day">
        <span slot="label">
         保修期
        </span>
        <el-input class="formInput" v-model="ruleForm.warranty_day" style="width: 200px; margin-bottom: 0px;"></el-input>
      </el-form-item>

      <div style="margin-left:18%; margin-top:0px; margin-bottom:30px; font-size: 14px; color: orange"> 
          商品质保承诺将大大提升市场信心（可不提供）
        </div>


        <el-form-item prop="descrition" style="height:350px;">
        <span slot="label">
          eBay description
        </span>
        <quill-editor v-model="ruleForm.descrition" style="height:260px;" :options="{
               placeholder: '在eBay网店，商品详情可以利用图片+文字的方式推送'
             }"></quill-editor>
      </el-form-item>

        <el-form-item prop="amazonDescription:" style="height:350px;">
        <span slot="label">
          Amazon description:
        </span>
        <quill-editor v-model="ruleForm.amazonDescription" style="height:260px;" :options="{
               placeholder: '在Amazon网店，目前只允许白金级别网店以图片+文字方式推送，其余将删除图片，只推送纯文字'
             }"></quill-editor>
      </el-form-item>      


      <el-form-item>
          <div style="float: right">
        <el-button type="primary" @click="submitForm('ruleForm')">保存</el-button>
        <el-button @click="resetForm('ruleForm')">重置</el-button>
          </div>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      ruleForm: {},
      rules: {
        title: [
          { required: true, message: "商品标题中包含搜索关键字，品牌名，颜色，大小，型号。", trigger: "blur" }
        ],
        length: [
          {
            required: true,
            message: "指邮购零售包装长，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        width: [
          {
            required: true,
            message: "指邮购零售包装宽，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        height: [
          {
            required: true,
            message: "指邮购零售包高，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        weight: [
          {
            required: true,
            message: "指邮购零售包装重量，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        sku_cd: [
          { required: true, message: "必填项", trigger: "blur" }
        ],
        model: [
          { required: true, message: "商品正式上架前，请再审阅借卖价格，并选择借卖价格有效期", trigger: "blur" }
        ],
        retail_price: [
          { required: true, message: "必填项", trigger: "blur" }
        ],
        
      }
    };
  },
  created(){
    console.log("======"+this.$store.getters.pro_id)
    console.log("eeeeee"+this.$store.getters.man_id)
  },
  methods:{
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            alert('submit!');
            this.$router.push({path: '/mvo/mvo-myInfo-edit'})
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
  }
};
</script>

<style>
.demo-ruleForm {
  display: block;
  font-size: 20px;
  padding-top: 8px;
  padding-left: 20px;
  padding-right: 20px;
  text-size-adjust: 100%;
  margin: 5%;
  margin-top: 15px;
  margin-left: 15%;
}
.formInput {
  margin-left: 14px;
  width: 204px;
}
.el-form-item__error {
  margin-left: 14px;
  position: relative;
}
#divider {
  margin: 0px;
}
</style>