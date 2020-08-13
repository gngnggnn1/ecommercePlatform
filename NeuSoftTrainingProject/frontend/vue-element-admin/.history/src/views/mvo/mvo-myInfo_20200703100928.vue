<template>
  <el-form
    :model="ruleForm"
    :rules="rules"
    :size="small"
    ref="ruleForm"
    label-width="150px"
    class="demo-ruleForm"
  >
    <el-form-item prop="companyNameZh">
       <span slot="label">Company name<br>公司名称(中)</span>
      <el-input class="formInput" v-model="ruleForm.companyNameZh"></el-input>
    </el-form-item>
    <el-form-item prop="companyNameEn">
      <span slot="label">Company name<br>公司名称(英)</span>
      <el-input v-model="ruleForm.companyNameEn"></el-input>
    </el-form-item>
    <el-form-item prop="companyIntro">
      <span slot="label">Brief Introduction<br>公司简介</span>
      <quill-editor v-model="ruleForm.companyIntro" style="height:260px;" :options="editorOption"></quill-editor>
    </el-form-item>
    <el-form-item prop="gmcType">
      <span slot="label">GMC Report Type<br>品牌认证类型</span>
      <el-input v-model="ruleForm.gmcType"></el-input>
    </el-form-item>
    <el-form-item prop="gmcUrl">
      <span slot="label">GMC Report Url<br>品牌认证地址</span>
      <el-input v-model="ruleForm.gmcUrl"></el-input>
    </el-form-item>
    <el-form-item>
      <el-button type="primary" @click="submitForm('ruleForm')">保存</el-button>
      <el-button @click="resetForm('ruleForm')">重置</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
export default {
  data() {
    return {
      ruleForm: {
        companyNameZh: "",
        companyNameEn: "",
        companyIntro: "",
        gmcType: "",
        gmcUrl: ""
      },
      rules: {
        companyNameZh: [
          { required: true, message: "请输入公司名称", trigger: "blur" },
          // { min: 3, max: 5, message: "长度在 3 到 5 个字符", trigger: "blur" }
        ],
        companyNameEn: [
          { required: true, message: "Please Enter English Company name", trigger: "change" }
        ],
        gmcType: [
          { required: true, message: "请输入品牌认证类型", trigger: "change" }
        ],
        gmcUrl: [
          { required: true, message: "请输入品牌认证地址", trigger: "change" }
        ]
      }
    };
  }
};
</script>

<style>
.demo-ruleFrom{
  display: block;
  font-size: 14px;
  padding-top: 8px;
  padding-left: 20px;
  padding-right: 20px;
  text-size-adjust: 100%;
}
.formInput{
 margin-top: 14px;
 height: 36px;
 width: 204px;
}
</style>