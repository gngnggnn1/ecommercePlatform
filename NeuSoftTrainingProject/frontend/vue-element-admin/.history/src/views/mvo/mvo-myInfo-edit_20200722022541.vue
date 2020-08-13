<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">

      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal; margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />
          公司信息</small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <el-form
      :model="manForm"
      :rules="rules"
      ref="manForm"
      label-width="150px"
      class="demo-manForm"
    >
      <el-form-item prop="name_cn">
        <span slot="label">
          Company name
          <br />公司名称(中)
        </span>
        <el-input class="formInput" v-model="manForm.name_cn"></el-input>
      </el-form-item>
      <el-form-item prop="name_en">
        <span slot="label">
          Company name
          <br />公司名称(英)
        </span>
        <el-input class="formInput" v-model="manForm.name_en"></el-input>
      </el-form-item>
      <el-form-item prop="description" style="height:350px;">
        <span slot="label">
          Brief Introduction
          <br />公司简介
        </span>
        <quill-editor v-model="manForm.description" style="height:260px;" ></quill-editor>
      </el-form-item>
      <el-form-item prop="gmc_report_type">
        <span slot="label">
          GMC Report Type
          <br />品牌认证类型
        </span>
        <el-input class="formInput" v-model="manForm.gmc_report_type"></el-input>
      </el-form-item>
      <el-form-item prop="gmc_report_url">
        <span slot="label">
          GMC Report Url
          <br />品牌认证地址
        </span>
        <el-input class="formInput" v-model="manForm.gmc_report_url"></el-input>
      </el-form-item>
      <el-form-item>
          <div style="float: right">
        <el-button type="primary" @click="submitForm()">保存</el-button>
        <el-button @click="resetForm('manForm')">重置</el-button>
          </div>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      manForm: {
        name_en: "",
        name_cn: "",
        description: "",
        gmc_report_type: "",
        gmc_report_url: "",
        username: ""
      },
      rules: {
        name_cn: [
          { required: true, message: "请输入公司名称", trigger: "blur" }
          // { min: 3, max: 5, message: "长度在 3 到 5 个字符", trigger: "blur" }
        ],
        name_en: [
          {
            required: true,
            message: "Please Enter English Company name",
            trigger: "blur"
          }
        ],
        gmc_report_type: [
          { required: true, message: "请输入品牌认证类型", trigger: "blur" }
        ],
        gmc_report_url: [
          { required: true, message: "请输入品牌认证地址", trigger: "blur" }
        ]
      }
    };
  },
  methods:{
      submitForm() {
        this.$refs.manForm.validate((valid) => {
          if (valid) {
            let data = {};
            this.manForm.username = JSON.parse(window.sessionStorage.getItem("USER_AUTH")).username;
            data["manManufacturer"] = this.manForm;
            data["user"] = this.manForm;
            // alert('submit!');
            this.$store.dispatch('AddMan',data).then((result) => {
              if (result.code == 200 & result.message == 'success' ){
                setTimeout(() => {
                  this.$router.push({path: 'mvo-myInfo'})
                },100);
                this.$message({
                  type: 'success',
                  message: `添加成功!`
                })
              }else {
                this.$message({
                  type: 'info',
                  message: `添加失败!`
                })
              }
            }).catch(()=>{
              return false;
            })

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
.demo-manForm {
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
  margin-top: 14px;
  margin-left: 14px;
  height: 36px;
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
