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
    <div style="margin-left:10px">
    <br />
    <br />

    <span>
      商品名称
      <el-input style="width:200px" v-model="searchCommodityName"></el-input>
      
    </span>
    <el-button type="primary" icon="el-icon-search" style="margin-left: 20px"></el-button>
    <el-button type="primary" @click="newInput()">新增</el-button>

    <br />
    <br />

    <el-table
    ref="multipleTable"
    :data="tableData"
    tooltip-effect="dark"
    style="width: 100%"
    @selection-change="handleSelectionChange"
    >
    <el-table-column
      type="selection"
      width="55">
    </el-table-column>
    <el-table-column prop="title" label="商品名称"></el-table-column>
      <el-table-column prop="model" label="商品型号"></el-table-column>
      <el-table-column prop="sku_cd" label="sku编码"></el-table-column>
      <el-table-column prop="description" label="商品描述"></el-table-column>
      <el-table-column prop="sts_cd" label="状态"></el-table-column>
      <el-table-column label="操作">
        <template>
          <el-button type="primary" size="mini" @click="handleEdit">编辑</el-button>
          <el-button type="danger" size="mini">删除</el-button>
        </template>
      </el-table-column>
  </el-table>
  </div>
  
  
  <el-dialog title="编辑商品" :visible.sync="dialogVisible">
  
  <el-form
      :model="ruleForm"
      :rules="rules"
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
        <el-input class="formInput" v-model="ruleForm.commodityLength" style="width: 100px"></el-input>
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

      <div style="margin-left:18%; margin-top:0px; margin-bottom:30px; font-size: 14px; color: blue"> 
          品牌商可以选择不提供UPC和EAN码 eBay网店不一定需要UPC码，amazon网店通常自己再另外为借卖商品申请UPC码，这样可以让商品独立销售，如果amazon网店不为借卖商品另外申请UPC码，将以跟卖商品销售商品。UPC码也是用于商品的条码，主要用于美国和加拿大地区，UPC条码是由美国统一代码委员会制定的一种条码。出口到北美地区为了适应北美地区的需要，也需要申请UPC条码，UPC条码也有标准版和缩短版两种，标准版由12位数字构成，缩短版由8位数字构成。
        </div>

        <el-form-item prop="enaCode">
        <span slot="label">
         ena编码
        </span>
        <el-input class="formInput" v-model="ruleForm.enaCode" style="width: 200px; margin-bottom: 0px;"></el-input>
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

      <el-form-item prop="price">
        <span slot="label">
         借卖价格
        </span>
        <el-input class="formInput" v-model="ruleForm.price" style="width: 200px; margin-bottom: 0px;"></el-input>
      </el-form-item>

      <el-form-item prop="guaranteePeriod">
        <span slot="label">
         保修期
        </span>
        <el-input class="formInput" v-model="ruleForm.guaranteePeriod" style="width: 200px; margin-bottom: 0px;"></el-input>
      </el-form-item>

      <div style="margin-left:18%; margin-top:0px; margin-bottom:30px; font-size: 14px; color: orange"> 
          商品质保承诺将大大提升市场信心（可不提供）
        </div>


        <el-form-item prop="eBayDescription" style="height:350px;">
        <span slot="label">
          eBay description
        </span>
        <quill-editor v-model="ruleForm.eBayDescription" style="height:260px;" :options="{
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
</el-dialog>

</div>
  
</template>

<script>
import { searchUnionInfo } from '@/api/mvoHandler'

export default {
  data() {
    return {
      curUser: {},
      searchCommodityName: '',
      tableData: [],
      orginTableData: [],
      dialogVisible: false
    };
  },
  created() {
    this.curUser = JSON.parse(window.sessionStorage.getItem("USER_AUTH"))
    console.log("+++++++++++++++++"+this.curUser.username)
  },
  mounted() {
    searchUnionInfo(this.curUser.username).then(res => {
      let proList = res.data
      for (let i of proList){
        this.tableData.push(i.pro)
      }
    })
  },
  methods:{
      newInput() {
        this.$router.push({path: '/mvo/mvo-goodsNewRecord'})
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      handleSelectionChange() {

      }
  }
}
</script>

<style>
.container {
  margin-left: 20px;
}
.top {
  display: flex;
  flex-direction: row;
  width: 20%;
  font-size: 15px;
  font-weight: bold;
  justify-content: space-between;
}
</style>
