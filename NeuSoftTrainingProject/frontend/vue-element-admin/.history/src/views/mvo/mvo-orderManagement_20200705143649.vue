<template>
<div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />
          订单管理</small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <div style="margin-left:10px">
    <br />
    <br />

    <span>
      商品标题：
      <el-input style="width:200px" placeholder @input="search" v-model="search_username"></el-input>
      
    </span>
    <el-button type="primary" style="margin-left: 10px"> search
        <font-awesome-icon :icon="['fas','search']" size="2px" />
    </el-button>
    

    
  </div>
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
        
        this.$router.push({path: '/mvo/goodsNewRecord'})
          
      
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
