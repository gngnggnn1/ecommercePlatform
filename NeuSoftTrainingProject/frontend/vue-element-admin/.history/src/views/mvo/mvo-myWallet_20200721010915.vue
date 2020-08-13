<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        我的钱包
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />账户信息
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>

    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>账户信息</span>
        <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
      </div>
      <div class="text item">{{'账户名：  ' + this.waa.account_name }}</div>
      <div class="text item">{{'邮箱:    ' + this.waa.email}}</div>
      <div class="text item">{{'是否激活: ' + this.waa.is_active=='Y'?"是":"否"}} </div>
      <div class="text item">{{}}</div>
      <div class="text item">{{}}</div>
      <div class="text item">{{}}</div>
      <div class="text item">{{}}</div>
      <div class="text item">{{}}</div>
    </el-card>
  </div>
</template>

<script>
import {getWalletInfo} from '@/api/wallet'
export default {
  data() {
    return {
      waa: {},
      waf: {}
    };
  },
  created(){
    getWalletInfo("admin").then(res => {
      if(res.code ==200){
        this.waa = res.data.waa
        this.waf = res.data.waf
      }
      else{
        alert("账户未注册。点击确定跳转注册")
        this.$router.push('mvo/mvo-myWalletRegis')
      }
    })
  },
  methods: {
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
  /* margin-top: 14px;
  margin-left: 14px;
  height: 36px; */
  width: 204px;
}
.el-form-item__error {
  margin-left: 14px;
  position: relative;
}
#divider {
  margin: 0px;
}
.text {
  font-size: 14px;
}

.item {
  margin-bottom: 18px;
}

.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
}
.clearfix:after {
  clear: both;
}

.box-card {
  width: 480px;
}
</style>