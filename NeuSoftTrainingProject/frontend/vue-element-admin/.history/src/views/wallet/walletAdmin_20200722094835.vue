<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal; margin:15px">
        管理员
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />钱包管理
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <div style="margin-left:10px">
      <el-table
        ref="multipleTable"
        max-height="400"
        highlight-current-row
        v-loading="loading"
        tooltip-effect="dark"
        style="width: 100%;"
        :data="walletForm.slice((currentPage-1)*pageSize,currentPage*pageSize)"
        @selection-change="handleSelectionChange">

        <el-table-column type="selection" width="55"></el-table-column>
        <el-table-column prop="account_name" label="账户名" width="200"></el-table-column>
        <el-table-column prop="transaction_type" label="业务类型" width="200"></el-table-column>
        <el-table-column prop="transaction_money" label="金额" width="200"></el-table-column>
        <el-table-column prop="create_time" label="申请时间" width="200"></el-table-column>
        <el-table-column prop="status" label="状态" width="200"></el-table-column>
        <el-table-column label="操作" width="200">
          <template scope="scope">
            <el-button type="primary" size="large" @click="shipConfirm(scope.$index, scope.row)">审核通过</el-button>
          </template>
        </el-table-column>


      </el-table>
      <el-divider content-position="left" id="divider2"></el-divider>
      <!--批量审核 && 页面分割-->
      <div class="block">
        <el-row :gutter="100">
          <!--批量审核-->
          <el-col :span="8" class="toolbar" style="padding-bottom: 0;">
            <el-form :inline="true">
              <el-form-item>
                <el-button type="primary" icon="el-icon-import" v-on:click="batchShip(selectedItem)">批量审核</el-button>
              </el-form-item>
            </el-form>
          </el-col>
          <el-col :span="8">
            <!--页面分割-->
            <el-pagination class="fy"
                           background
                           @current-change="handleCurrentChange"
                           @size-change="handleSizeChange"
                           :pager-count="5"
                           :page-sizes="[5, 10, 15, 20]"
                           :page-size="pageSize"
                           layout="prev, pager, next, sizes, total, jumper"
                           :total="total">
            </el-pagination>
          </el-col>
        </el-row>
      </div>
    </div>


  </div>
</template>

<script>
    export default {
        name:"",
        data(){
          return{
            loading: false,
            wholeInfo: [],
            walletForm: [],
            currentPage : 1,
            total : 1000,
            pageSize : 10,
            selectedItem : [],//被选中的数据
            selectedId : [],//批量删除id


          }
        },
        created() {
          this.getInfo()
        },

        methods:{
          getInfo(){
            this.$store.dispatch('GetInfo').then((result) => {
              // console.log(result)
              this.wholeInfo = result.data
              // this.walletForm = []
              // this.walletForm = result.data.wtr

              for(let i =0; i< result.data.wtr.length; i++){
                // let f = this.walletForm[i]
                if(this.walletForm[i].status == '2'){
                  this.walletForm[i].status = '申请中'
                }
                if (this.walletForm[i].status == '4'){
                  this.walletForm[i].status = '已完成'
                }
                if (this.walletForm[i].operate_type == '1'){
                  this.walletForm[i].operate_type = '充值'
           
                }
                if (this.walletForm[i].operate_type == '2'){
                  this.walletForm[i].operate_type = '提现'
                }
                // this.walletForm.push(f)
              }
              this.total = this.walletForm.length


            })

          },
          handleSelectionChange(val) {
            this.selectedItem = val;
          },

          handleCurrentChange(val) {
            this.currentPage = val;
          },
          handleSizeChange(val){
            this.pageSize = val;
          },
          shipConfirm(index, rowData){
            // console.log(rowData)
            this.$store.dispatch('ShipConfirm',rowData).then((result) => {
              if (result.code == 200 && result.message == 'success'){
                this.$message({
                  message: "已审核成功！",
                  type: "success"
                });
              }else {
              }
              this.getInfo()
            })

          },
          batchShip(rows){
            rows.forEach(rowElement => {
              this.$store.dispatch('ShipConfirm',rowElement).then((result) => {
                if (result.code == 201 || result.code == 202){
                  this.$message({
                    message: "审核失败！",
                    type: "info"
                  });
                  return false;
                }else {
                }
              })
            })


            setTimeout(()=>{
              this.$message({
                message: "审核成功！",
                type: "success"
              });
              this.getInfo()
            },100)


          }


        }

    }
</script>

<style scoped>

</style>
