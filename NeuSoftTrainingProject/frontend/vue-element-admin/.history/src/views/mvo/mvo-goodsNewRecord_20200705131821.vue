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
      :size="small"
      ref="ruleForm"
      label-width="150px"
      class="demo-ruleForm"
    >
      <el-form-item prop="commodityName">
        <span slot="label">
          商品标题
        </span>
        <el-input class="formInput" v-model="ruleForm.commodityName"></el-input>
      </el-form-item>
      <div style="margin-left:10%; margin-top:25px; margin-bottom:20px; font-size: 14px;"> 
          体积重
        </div>
      <el-form-item prop="commodityLength">
        <span slot="label">
          长
        </span>
        <el-input class="formInput" v-model="ruleForm.commodityWidth" style="width: 100px"></el-input>
        <span style="margin: 10px">cm</span>
      </el-form-item>
      <el-form-item prop="commodityWidth">
        <span slot="label">
          宽
        </span>
        <el-input class="formInput" v-model="ruleForm.commodityWidth" style="width: 100px"></el-input>
        <span style="margin: 10px">cm</span>
      </el-form-item>
      <el-form-item prop="commodityHeight">
        <span slot="label">
          高
        </span>
        <el-input class="formInput" v-model="ruleForm.commodityHeight" style="width: 100px"></el-input>
        <span style="margin: 10px">cm</span>
      </el-form-item>
      <el-form-item prop="commodityWeight">
        <span slot="label">
          重量
        </span>
        <el-input class="formInput" v-model="ruleForm.commodityWeight" style="width: 100px"></el-input>
        <span style="margin: 10px">kg</span>
      </el-form-item>
      <el-form-item prop="companyIntro" style="height:350px;">
        <span slot="label">
          Brief Introduction
          <br />公司简介
        </span>
        <quill-editor v-model="ruleForm.companyIntro" style="height:260px;" :options="editorOption"></quill-editor>
      </el-form-item>
      <el-form-item prop="skuCode">
        <span slot="label">
         商品skuCode编码
        </span>
        <el-input class="formInput" v-model="ruleForm.skuCode" style="width: 200px"></el-input>
      </el-form-item>
      <el-form-item prop="upcCode">
        <span slot="label">
         upc编码
        </span>
        <el-input class="formInput" v-model="ruleForm.upcCode" style="width: 200px; margin-bottom: 0px;"></el-input>
      </el-form-item>

      <div style="margin-left:18%; margin-top:5px; margin-bottom:20px; font-size: 14px; color: blue"> 
          品牌商可以选择不提供UPC和EAN码 eBay网店不一定需要UPC码，amazon网店通常自己再另外为借卖商品申请UPC码，这样可以让商品独立销售，如果amazon网店不为借卖商品另外申请UPC码，将以跟卖商品销售商品。UPC码也是用于商品的条码，主要用于美国和加拿大地区，UPC条码是由美国统一代码委员会制定的一种条码。出口到北美地区为了适应北美地区的需要，也需要申请UPC条码，UPC条码也有标准版和缩短版两种，标准版由12位数字构成，缩短版由8位数字构成。
        </div>

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
      ruleForm: {
        commodityName: "",
        companyNameEn: "",
        companyIntro: "",
        gmcType: "",
        gmcUrl: ""
      },
      rules: {
        commodityName: [
          { required: true, message: "商品标题中包含搜索关键字，品牌名，颜色，大小，型号。", trigger: "blur" }
        ],
        commodityLength: [
          {
            required: true,
            message: "指邮购零售包装长，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        commodityWidth: [
          {
            required: true,
            message: "指邮购零售包装宽，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        commodityHeight: [
          {
            required: true,
            message: "指邮购零售包高，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        commodityWeight: [
          {
            required: true,
            message: "指邮购零售包装重量，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        skuCode: [
          { required: true, message: "必填项", trigger: "blur" }
        ]
        
      }
    };
  },
  methods:{
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            alert('submit!');
            this.$router.push({path: '/mvo/myInfo-edit'})
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