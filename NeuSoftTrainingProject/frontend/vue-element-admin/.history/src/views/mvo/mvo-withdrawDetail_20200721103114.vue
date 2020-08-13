<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />流水明细
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <div style="margin-left:10px">
      <el-table
        ref="table"
        :data="tableData"
        tooltip-effect="dark"
        style="width: 80%; margin-bottom: 20px"
      >
        <el-table-column prop="transaction_id" label="交易流水号"></el-table-column>
        <el-table-column prop="available_money" label="余额"></el-table-column>
        <el-table-column prop="last_update_time" label="时间"></el-table-column>
        <el-table-column prop="status" label="状态"></el-table-column>
      </el-table>
    </div>
  </div>
</template>

<script>
import { searchBusinessFlow ,twoJsonMerge} from "@/api/wallet";
export default {
  data() {
    return {
      tableData: []
    };
  },
  mounted() {},
  created(){
    let request = {}
    request['buyer_id'] = window.sessionStorage.getItem('buyer_id')
    searchBusinessFlow(request).then(res =>{
      for(let i =0; i<res.data.length; i++){
        console.log(twoJsonMerge(res.data.wta[i], res.data.wtr[i]))
        this.tableData.push(twoJsonMerge(res.data.wta[i], res.data.wtr[i]))
      }
      // console.log(this.tableData)
    })
  },
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
