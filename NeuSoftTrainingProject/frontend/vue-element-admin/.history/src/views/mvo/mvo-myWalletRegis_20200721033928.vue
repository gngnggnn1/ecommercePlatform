<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />
          钱包账号注册</small>
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
      <el-form-item prop="id">
        <span slot="label">
          用户名
        </span>
        <el-input class="formInput" v-model="ruleForm.account_name" disabled></el-input>
      </el-form-item>
      <el-form-item prop="email">
        <span slot="label">
         邮箱
        </span>
        <el-input class="formInput" v-model="ruleForm.email"></el-input>
      </el-form-item>
    
      <el-form-item prop="password">
        <span slot="label">
          密码
        </span>
        <el-input type="password" class="formInput" v-model="ruleForm.password"></el-input>
      </el-form-item>
      <el-form-item prop="passwordConfirm">
        <span slot="label">
          确认密码
        </span>
        <el-input type="password" class="formInput" v-model="ruleForm.passwordConfirm"></el-input>
      </el-form-item>
      <el-form-item>
          <div style="margin-left: 5%">
        <el-button type="primary" @click="register('ruleForm')">注册</el-button>
        <el-button @click="resetForm('ruleForm')">重置</el-button>
          </div>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import {registerWallet} from '@/api/wallet'
export default {
  data() {
    return {
      //passwordMessage: this.ruleForm.password == this.ruleForm.passwordConfirm? "必填":"两次密码不同",
      ruleForm: {
        account_name: JSON.parse(window.sessionStorage.getItem("USER_AUTH")).username
      },
      rules: {
        email: [
          { required: true, message: "必填", trigger: "blur" }
          // { min: 3, max: 5, message: "长度在 3 到 5 个字符", trigger: "blur" }
        ],
        password: [
          { required: true, message: "必填", trigger: "blur" }
          // { min: 3, max: 5, message: "长度在 3 到 5 个字符", trigger: "blur" }
        ],
        passwordConfirm: [
          { required: true, message: "必填", trigger: "blur" }
          // { min: 3, max: 5, message: "长度在 3 到 5 个字符", trigger: "blur" }
        ]
      }
    };
  },
  methods:{
      register(formName) {
        console.log(333)
        this.$refs[formName].validate((valid) => {
          if (valid) {
            if(this.ruleForm.password == this.ruleForm.passwordConfirm){
              let request = {}
              let waaa = this.ruleForm
              waaa['status'] = 7
              request['waa'] = waaa
              request['waf'] = {'available_money':0, 'depositing_money':0, 'withdrawing_money':0, 'currency':'RMB'}
              registerWallet(request).then(res =>{
                if(res.message == "success"){
                  alert("注册成功,跳转首页")
                  this.$router.push('mvo-myWallet')
              }
            }).catch(error=>{
            })
            }
            
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
</style>