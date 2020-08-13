<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />账户余额
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <div style="margin-left:10px">
      

 <el-table :data="tableData" height="250" border style="width: 100%">
            <el-table-column prop="accountId" label="账户" width="180"></el-table-column>
            <el-table-column prop="balance" label="余额" width="180"></el-table-column>
            <el-button size="mini" type="primary" @click="withdraw(scope.$index, scope.row)">提现</el-button>
          </el-table>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchCommodityName: "",
      tableData: [
        {
          accountId: "1",
          balance: "$10",
        }
      ]
    };
  },
  mounted() {},
  methods: {
    
  }
};
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
.tabs {
  margin-top: 30px;
}
</style>
