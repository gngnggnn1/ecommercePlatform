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
      

 <el-table ref="table"
      :data="tableData"
      tooltip-effect="dark"
      style="width: 100%; margin-bottom: 20px">
            <el-table-column prop="accountId" label="账户" ></el-table-column>
            <el-table-column prop="balance" label="余额"></el-table-column>
            <el-table-column prop="operation" label="操作">
            <el-button size="mini" type="primary" @click="dialogVisible = true">提现</el-button>
            <el-button size="mini" type="primary" @click="withdrawDetail(scope.$index, scope.row)">提现流水</el-button>
            </el-table-column>
          </el-table>
    </div>

<el-dialog title="提现" :visible.sync="dialogVisible" width="50%">
      <el-form ref="form" :model="form" label-width="80px">
        <el-form-item label="提现金额">
          <el-input v-model="form.withdrawAmount"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="form.password" style="width:100px"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="dialogVisible = false">保存</el-button>
      </span>
    </el-dialog>

  </div>
</template>

<script>
export default {
  data() {
    return {
      dialogVisible:false,
      form: {},
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
    // withdraw(){

    // }
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
</style>
