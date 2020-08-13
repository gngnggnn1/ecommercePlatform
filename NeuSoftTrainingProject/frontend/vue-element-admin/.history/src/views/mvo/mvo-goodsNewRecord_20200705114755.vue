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
      <div style="margin-left:15%; margin-top:25px; margin-bottom:20px; font-size: 14px;"> 
          体积重
        </div>
        <el-form-item prop="length">
        <span slot="label">
          长
        </span>
        <el-input class="formInput" v-model="ruleForm.commodityLength"></el-input>
        <span>cm</span>
      </el-form-item>
        
      </el-form-item>
      <el-form-item prop="companyIntro" style="height:350px;">
        <span slot="label">
          Brief Introduction
          <br />公司简介
        </span>
        <quill-editor v-model="ruleForm.companyIntro" style="height:260px;" :options="editorOption"></quill-editor>
      </el-form-item>
      <el-form-item prop="gmcType">
        <span slot="label">
          GMC Report Type
          <br />品牌认证类型
        </span>
        <el-input class="formInput" v-model="ruleForm.gmcType"></el-input>
      </el-form-item>
      <el-form-item prop="gmcUrl">
        <span slot="label">
          GMC Report Url
          <br />品牌认证地址
        </span>
        <el-input class="formInput" v-model="ruleForm.gmcUrl"></el-input>
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
        volWeight: [
          {
            required: true,
            message: "指邮购零售包装体积重，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)",
            trigger: "blur"
          }
        ],
        gmcType: [
          { required: true, message: "请输入品牌认证类型", trigger: "blur" }
        ],
        gmcUrl: [
          { required: true, message: "请输入品牌认证地址", trigger: "blur" }
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
  font-size: 14px;
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