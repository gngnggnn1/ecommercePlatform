<template>
  <el-form
    :model="ruleForm"
    :rules="rules"
    ref="ruleForm"
    label-width="100px"
    class="demo-ruleForm"
  >
    <el-form-item label="Company Name\n公司名称(中)" prop="companyNameZh">
      <el-input v-model="ruleForm.companyNameZh"></el-input>
    </el-form-item>
    <el-form-item label="Company Name\n公司名称(英)" prop="companyNameEn">
      <el-input v-model="ruleForm.companyNameEn"></el-input>
    </el-form-item>
    <el-form-item label="Brief Introduction\n公司简介" prop="companyIntro">
      <quill-editor v-model="ruleForm.companyIntro" style="height:260px;" :options="editorOption"></quill-editor>
    </el-form-item>
    <el-form-item label="GMC Report Type\n品牌认证类型" prop="gmcType">
      <el-input v-model="ruleForm.gmcType"></el-input>
    </el-form-item>
    <el-form-item label="GMC Report Url\n品牌认证地址" prop="gmcUrl">
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
/* .flex{
    display: flex;
    height: 600px;
    flex-direction: column;
} */
</style>