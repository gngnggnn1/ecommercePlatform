<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal; margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />订单管理
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <div style="margin-left:10px">
      <br />
      <br />

      <span>
        商品标题：
        <el-input style="width:200px" v-model="searchtitle"></el-input>
      </span>
      <el-button type="primary" style="margin-left: 10px">
        search
        <font-awesome-icon :icon="['fas','search']" size="2px" />
      </el-button>

      <el-tabs type="card" class="tabs" @tab-click="handleClickTab">
        <el-tab-pane  class="table1" label="待支付" name="first">
          <el-table :data="tableData1" height="250" border style="width: 100%" @row-click="clickData">
            <el-table-column prop="title" label="商品标题" width="180"></el-table-column>
            <el-table-column prop="price" label="价格" width="180"></el-table-column>
            <el-table-column prop="qty" label="数量"></el-table-column>
            <el-table-column prop="sku_cd" label="sku"></el-table-column>
            <el-table-column prop="order_no" label="订单编号"></el-table-column>
            <el-table-column prop="creation_date" label="订单创建时间"></el-table-column>
          </el-table>
        </el-tab-pane>
        <el-tab-pane class="table2" label="待发货" name="second">
          <el-table :data="tableData2" height="250" border style="width: 100%" @cell-click="clickCellData">
            <el-table-column prop="title" label="商品标题" width="180"></el-table-column>
            <el-table-column prop="price" label="价格" width="180"></el-table-column>
            <el-table-column prop="qty" label="数量"></el-table-column>
            <el-table-column prop="sku_cd" label="sku"></el-table-column>
            <el-table-column prop="order_no" label="订单编号"></el-table-column>
            <el-table-column prop="creation_date" label="订单创建时间"></el-table-column>
            <el-table-column label="操作" align="center">
              <template slot-scope="scope">
                <el-button
                  type="primary"
                  size="mini"
                  @click="handleShip(scope.$index, scope.row)"
                >发货</el-button>
              </template>
            </el-table-column>
          </el-table>
        </el-tab-pane>
        <el-tab-pane class="table3" label="已发货" name="third">
          <el-table :data="tableData3" height="250" border style="width: 100%" @cell-click="clickCellData">
            <el-table-column prop="title" label="商品标题" width="180"></el-table-column>
            <el-table-column prop="price" label="价格" width="180"></el-table-column>
            <el-table-column prop="qty" label="数量"></el-table-column>
            <el-table-column prop="sku_cd" label="sku"></el-table-column>
            <el-table-column prop="order_no" label="订单编号"></el-table-column>
            <el-table-column prop="creation_date" label="订单创建时间"></el-table-column>
            <el-table-column prop="tracking_no" label="物流跟踪号"></el-table-column>
            <el-table-column label="操作" align="center">
              <template slot-scope="scope">
                <el-button type="info" size="mini" @click="handleCancel(scope.$index, scope.row)">取消</el-button>
              </template>
            </el-table-column>
          </el-table>
        </el-tab-pane>
        <el-tab-pane class="table4" label="已完成" name="fourth">
          <el-table :data="tableData4" height="250" border style="width: 100%" @row-click="clickData">
            <el-table-column prop="title" label="商品标题" width="180"></el-table-column>
            <el-table-column prop="price" label="价格" width="180"></el-table-column>
            <el-table-column prop="qty" label="数量"></el-table-column>
            <el-table-column prop="sku_cd" label="sku"></el-table-column>
            <el-table-column prop="order_no" label="订单编号"></el-table-column>
            <el-table-column prop="creation_date" label="订单创建时间"></el-table-column>
            <el-table-column prop="tracking_no" label="物流跟踪号"></el-table-column>
          </el-table>
        </el-tab-pane>
        <el-tab-pane class="table5" label="已取消" name="fifth">
          <el-table :data="tableData5" height="250" border style="width: 100%" @row-click="clickData">
            <el-table-column prop="title" label="商品标题" width="180"></el-table-column>
            <el-table-column prop="price" label="价格" width="180"></el-table-column>
            <el-table-column prop="qty" label="数量"></el-table-column>
            <el-table-column prop="sku_cd" label="sku"></el-table-column>
            <el-table-column prop="order_no" label="订单编号"></el-table-column>
            <el-table-column prop="creation_date" label="订单创建时间"></el-table-column>
          </el-table>
        </el-tab-pane>
      </el-tabs>
    </div>
    <div style="text-align:center">
      <el-divider content-position="left" id="divider2"></el-divider>
      <el-button type="primary" @click="expressDialogVisible = true">物流查询</el-button>
    </div>

    <!--显示商品信息的对话框-->
    <el-dialog title="订单明细" :visible.sync="dialogVisible" width="60%">
      <el-form ref="multiForm" :model="multiForm" label-width="100px">
        <el-form-item label="商品标题">
          <el-input v-model="multiForm.title":disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="价格">
          <el-input v-model="multiForm.price":disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="数量">
          <el-input v-model="multiForm.qty":disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="sku编码">
          <el-input v-model="multiForm.sku_cd" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="upc编码">
          <el-input v-model="multiForm.upc" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="ean编码">
          <el-input v-model="multiForm.ean" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="订单编号">
          <el-input v-model="multiForm.order_no" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="建议零售价">
          <el-input v-model="multiForm.retail_price" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="最低零售价">
          <el-input v-model="multiForm.mininum_retail_price" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="快递公司">
          <el-input v-model="multiForm.wsp_name" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item v-show="this.currentTab == 'third' || this.currentTab =='fourth'" label="物流追踪号">
          <el-input v-model="multiForm.tracking_no" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="订单创建时间">
          <el-input v-model="multiForm.creation_date" :disabled="true"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="dialogVisible = false">确定</el-button>
      </span>
    </el-dialog>

    <!--快递查询对话框-->
    <el-dialog title="快递查询" :visible.sync="expressDialogVisible" width="60%">
      <el-form v-show="!clickStatus" ref="expressForm" :model="expressForm" label-width="200px">
        <el-form-item prop="com" label="快递公司简称" :rules="{required:true,message:'请输入快递公司简称',trigger:'change'}">
          <el-input v-model="expressForm.com"></el-input>
        </el-form-item>
        <el-form-item prop="nu" label="快递单号" :rules="{required:true,message:'请输入快递单号',trigger:'change'}">
          <el-input v-model="expressForm.nu"></el-input>
        </el-form-item>
        <el-form-item prop="receiverPhone" label="收件人手机号后四位(可选)">
          <el-input v-model="expressForm.receiverPhone"></el-input>
        </el-form-item>
        <el-form-item prop="senderPhone" label="寄件人手机号后四位(可选)">
          <el-input v-model="expressForm.senderPhone"></el-input>
        </el-form-item>
      </el-form>
      <!--查询到的时间线-->
      <el-timeline v-show="clickStatus">
        <el-timeline-item
          v-for="(express, index) in this.expressData"
          :key="index"
          :timestamp="express.time">
          {{express.context}}
        </el-timeline-item>
      </el-timeline>

      <span slot="footer" class="dialog-footer">
        <el-button v-show="!clickStatus"  @click="cleanExpress">取 消</el-button>
        <el-button type="primary" @click="clickTimes==1?closeDialog():searchExpress()">确 定</el-button>
      </span>
    </el-dialog>

  </div>
</template>

<script>
export default {
  data() {
    return {
      searchtitle: "",
      multiForm: {
        sao_id: "",
        sal_id: "",
        pro_id: "",
        title: "",
        price: "",
        qty: "",
        sku_cd: "",
        order_no: "",
        creation_date: "",
        tracking_no: "",
        order_sts: "",
        upc: "",
        ean: "",
        retail_price: "",
        mininum_retail_price: "",
        wsp_name: ""
      },
      expressForm:{
        com: "",//com公司简称(必须)
        nu: "",//nu快递单号(必须)
        receiverPhone: "",//收件人手机号后四位，顺丰需要填写(可选)
        senderPhone: ""//寄件人手机号后四位,顺丰需要填写(可选)
      },
      tableData1: [],
      tableData2: [],
      tableData3: [],
      tableData4: [],
      tableData5: [],
      orginTableData: [],
      currentTab: "",
      dialogVisible: false,
      expressDialogVisible: false,
      clickStatus: false,
      expressData: [],
      clickTimes: 0
    };
  },
  created() {
    this.getSao()
  },
  mounted() {},
  methods: {

    newInput() {
      this.$router.push({ path: "/mvo/mvo-goodsNewRecord" });
    },


    getSao(){
      this.$store.dispatch('GetSao',JSON.parse(window.sessionStorage.getItem("USER_AUTH")).username).then((result) => {
        //每次push前先清空
        this.tableData1= []
        this.tableData2= []
        this.tableData3= []
        this.tableData4= []
        this.tableData5= []

        let saoData = result.data.sao
        let salData = result.data.sal
        let proData = result.data.pro

        //根据sao的order_sts分给五个table_data(1-5对应)
        //根据sao_id对应每个sal
        //根据pro_id对应每个pro
        //分割数据显示
        for (let i = 0;i < saoData.length;i++){
          let tempForm = {
            sao_id: "",
            sal_id: "",
            pro_id: "",
            title: "",
            price: "",
            qty: "",
            sku_cd: "",
            order_no: "",
            creation_date: "",
            tracking_no: "",
            order_sts: "",
            //下面展示订单详情的时候使用
            upc: "",//pro的upc
            ean: "",//pro的ean
            retail_price: "",//pro的建议零售价
            mininum_retail_price: "",//pro的最低零售价
            wsp_name: ""//sal的快递公司
          }

          tempForm.sao_id = saoData[i].sao_id
          tempForm.sal_id = salData[i].sal_id
          tempForm.pro_id = proData[i].pro_id
          tempForm.title = proData[i].title
          tempForm.price = salData[i].price
          tempForm.qty = salData[i].qty
          tempForm.sku_cd = proData[i].sku_cd
          tempForm.order_no = saoData[i].order_no
          tempForm.creation_date = saoData[i].creation_date
          tempForm.tracking_no = salData[i].tracking_no
          tempForm.order_sts = saoData[i].order_sts
          tempForm.upc = proData[i].upc
          tempForm.ean = proData[i].ean
          tempForm.retail_price = proData[i].retail_price
          tempForm.mininum_retail_price = proData[i].mininum_retail_price
          tempForm.wsp_name = salData[i].wsp_name

          if (tempForm.order_sts == 'AwaitingPayment'){
            this.tableData1.push(tempForm)
          }else if(tempForm.order_sts == 'AwaitingShipment'){
            this.tableData2.push(tempForm)
          }else if(tempForm.order_sts == 'SHIPPED'){
            this.tableData3.push(tempForm)
          }else if(tempForm.order_sts == 'Complete'){
            this.tableData4.push(tempForm)
          }else if(tempForm.order_sts == 'Canceled'){
            this.tableData5.push(tempForm)
          }
        }
      });
    },

    clickData(rowData,event,column){
      this.multiForm = rowData
      // console.log(this.multiForm)

      this.dialogVisible = true
    },
    clickCellData(rowData, column, cell, event){
      if (column.label != '操作'){
        this.multiForm = rowData
        // console.log(this.multiForm)
        this.dialogVisible = true
      }else {
        this.dialogVisible = false
      }
    },

    handleClickTab(tab, event){
      // console.log(tab.name)
      this.currentTab = tab.name
    },

    handleShip(index, rowData){
      this.dialogVisible = false
      // console.log(rowData)

      this.$store.dispatch('ShipSao',rowData.sao_id).then((result) => {
        // console.log(result)
        if (result.code == 200 && result.message == 'success'){
          this.$message({
            type: 'success',
            message: `发货成功!`
          })
          setTimeout(()=>{
            this.getSao()
          },100)
        }else {
          this.$message({
            type: 'info',
            message: `发货失败!`
          })
        }
      })
    },

    handleCancel(index, rowData){
      this.dialogVisible = false
      // console.log(rowData)

      this.$store.dispatch('CancelSao',rowData.sao_id).then((result) => {
        // console.log(result)
        if (result.code == 200 && result.message == 'success'){
          this.$message({
            type: 'success',
            message: `取消发货成功!`
          })
          setTimeout(()=>{
            this.getSao()
          },100)
        }else {
          this.$message({
            type: 'info',
            message: `取消发货失败!`
          })
        }
      })
    },

    cleanExpress(){
      this.expressForm = {
        com: "",
        nu: "",
        receiverPhone: "",
        senderPhone: ""
      }
      this.expressDialogVisible = false
      setTimeout(() => {
        this.clickStatus = false
      },300)
    },

    searchExpress(){
      this.clickTimes = this.clickTimes+1
      this.$store.dispatch('GetExpress',this.expressForm).then((result) => {
        this.expressData = []
        this.expressData = result.data.showapi_res_body.data
        if (this.expressData != null){
          this.clickStatus = true
        }else {
          this.clickStatus = true
          this.$message({
            type: 'info',
            message: `没有查询到结果!`
          })
        }

      })
    },
    closeDialog(){
      this.cleanExpress()
      setTimeout(()=>{
        this.expressData = []
        this.clickTimes = 0
      },300)
    }

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
