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
      <el-form :model="form" ref="form" label-width="150px">
        <el-form-item prop="account_name">
          <span slot="label">用户名</span>
          <el-input class="formInput" v-model="form.account_name" disabled></el-input>
        </el-form-item>
        <el-form-item prop="email">
          <span slot="label">邮箱</span>
          <el-input class="formInput" v-model="form.email" disabled></el-input>
        </el-form-item>
        <el-form-item prop="status">
          <span slot="label">状态</span>
          <el-input class="formInput" v-model="form.status" disabled></el-input>
        </el-form-item>
      </el-form>
      <el-form :model="form1" ref="form1" label-width="150px">
        <el-form-item prop="available_money">
          <span slot="label">可用金额</span>
          <el-input class="formInput" v-model="form1.available_money" disabled></el-input>
        </el-form-item>
        <el-form-item prop="depositing_money">
          <span slot="label">充值中金额</span>
          <el-input class="formInput" v-model="form1.depositing_money" disabled></el-input>
        </el-form-item>
        <el-form-item prop="withdrawing_money">
          <span slot="label">提现中金额</span>
          <el-input class="formInput" v-model="form1.withdrawing_money" disabled></el-input>
        </el-form-item>
        <el-form-item prop="currency">
          <span slot="label">账户币种</span>
          <el-input class="formInput" v-model="form1.currency" disabled></el-input>
        </el-form-item>
      </el-form>
    </el-card>
  </div>
</template>

<script>
import { getWalletInfo } from "@/api/wallet";
export default {
  data() {
    return {
      form: [],
      form1:[],
      waa: {},
      waf: {}
    };
  },
  created() {
    getWalletInfo(JSON.parse(window.sessionStorage.getItem("USER_AUTH")).username).then(res => {
      if (res.code === "201") {
        this.form = res.data.waa;
        this.form1 = res.data.waf;
        this.form.status = (this.form.status== 7 ?"正常":"冻结")
      } else {
        // alert("账户未注册。点击确定跳转注册");
        this.$router.push("mvo/mvo-myWalletRegis");
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
  margin-top: 1%;
  margin-left:25%;
  width: 480px;
}

.el-input.is-disabled /deep/ .el-input__inner {
  color: #606266;
}
</style>