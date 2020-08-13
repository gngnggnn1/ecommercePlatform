<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />提现明细
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <div style="margin-left:10px">
      

 <el-table ref="table"
      :data="tableData"
      tooltip-effect="dark"
      style="width: 100%; margin-bottom: 20px">
            <el-table-column prop="transactionId" label="交易流水号" ></el-table-column>
            <el-table-column prop="balance" label="余额"></el-table-column>
            <el-table-column prop="time" label="时间"></el-table-column>
                <el-table-column prop="state" label="状态">
            </el-table-column>
          </el-table>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tableData: [
        {
          accountransactionIdtId: "1wer",
          balance: "$10",
          time: "2017-08-04 09:12:11",
          state: "处理中"
        },
        {
          accountransactionIdtId: "1wer",
          balance: "$10",
          time: "2017-08-04 09:12:11",
          state: "处理中"
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
