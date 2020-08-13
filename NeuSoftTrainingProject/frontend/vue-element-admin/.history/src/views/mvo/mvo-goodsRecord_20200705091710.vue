<template>
  <div style="margin-left:10px">
    <br />
    <br />

    <span>
      name：
      <el-input style="width:200px" placeholder @input="search" v-model="search_username"></el-input>
      
    </span>
    <el-button type="danger" icon="el-icon-search"></el-button>
    <el-button type="primary" @click="newInput()">新增</el-button>

    <br />
    <br />
    <el-table :data="tableData" style="width: 100%">
      <el-table-column prop="id" sortable label="ID"></el-table-column>
      <el-table-column prop="name" label="name"></el-table-column>
      <el-table-column prop="price" label="price"></el-table-column>
      <el-table-column prop="num" label="number"></el-table-column>
      <el-table-column prop="sku" label="sku"></el-table-column>

      <el-table-column label="operation">
        <template>
          <el-button type="primart" size="mini">编辑</el-button>
          <el-button type="danger" size="mini">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>

export default {
  data() {
    return {
      tableData: [
        { id: 1, name: "joy", price: 34, num: 8888, sku: "GM001031" }
      ],
      orginTableData: [],
      dialogVisible: false
    };
  },
  mounted() {},
   methods:{
      newInput() {
        
        this.$router.push({path: '/mvo/goods-new-record'})
          
      
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
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
