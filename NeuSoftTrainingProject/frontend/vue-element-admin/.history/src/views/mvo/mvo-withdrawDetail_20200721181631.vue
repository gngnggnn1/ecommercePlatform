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
        <el-table-column prop="balance" label="余额"></el-table-column>
        <el-table-column prop="transaction_type" label="操作类型"></el-table-column>
        <el-table-column prop="transaction_money" label="流水金额"></el-table-column>
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
      console.log(res)
      for(let i =0; i<res.data.wta.length; i++){
        let data = twoJsonMerge(res.data.wta[i], res.data.wtr[i])
        if(data['transaction_type'] == "1"){
          data['transaction_type'] = "充值"
        }
        else{
          data['transaction_type'] = "提现"
        }
        if(data['status'] == "2"){
          data['status'] = "申请中"
        }
        else if (data['status'] == "4"){
          data['status'] = "已完成"
        }
        else{
          data['status'] = "申请失败"
        }
        this.tableData.push(data)
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
