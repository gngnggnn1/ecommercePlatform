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
    <!-- <el-table-column prop="pro_id" label="商品ID"></el-table-column> -->
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
