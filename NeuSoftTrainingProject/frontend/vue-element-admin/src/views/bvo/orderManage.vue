<template>
  <div class="components-container">
    <el-container>
      <el-header>
        <el-form :inline="true" :model="formInline" class="demo-form-inline">
          <el-form-item>
            <el-input v-model="formInline.store" placeholder="亲~请输入要查询的网店" />
          </el-form-item>
          <el-form-item>
            <el-button type="success" icon="el-icon-search" @click="searchorder">查 询</el-button>
          </el-form-item>
          <el-form-item>
            <el-button type="warning" icon="el-icon-refresh" @click="searchorder">刷新订单</el-button>
          </el-form-item>
        </el-form>
      </el-header>
      <el-main>
        <el-tabs v-model="activeName" @tab-click="handleClick">
          <el-tab-pane label="待支付" name="awaitingPayment">
            <el-table
              :data="awaPayList"
              style="width: 100%"
              height="600px"
            >
              <el-table-column
                prop="proname"
                label="商品名称"
                width="150"
              />
              <el-table-column
                prop="proprice"
                label="商品价格"
                width="100"
              />
              <el-table-column
                prop="prosku"
                label="sku编码"
                width="100"
              />
              <el-table-column
                prop="proorderID"
                label="订单号"
                width="150"
              />
              <el-table-column
                prop="prototal"
                label="订单价格"
                width="100"
              />
              <el-table-column
                prop="pronumber"
                label="商品数量"
                width="100"
              />
              <el-table-column>
                <template slot-scope="scope">
                  <el-button
                    size="mini"
                    type="success"
                    @click="handlePay(scope.$index, scope.row)"
                  >支付</el-button>
                  <el-button
                    size="mini"
                    type="warning"
                    @click="handleView(scope.$index, scope.row)"
                  >查看</el-button>
                </template>
              </el-table-column>
            </el-table>
            <el-dialog title="支付确认" :visible.sync="dialogFormVisible">
              <el-form :model="form">
                <el-form-item label="收货人" :label-width="formLabelWidth">
                  <el-input v-model="form.receiver" autocomplete="off" :disabled="true" />
                </el-form-item>
                <el-form-item label="地址" :label-width="formLabelWidth">
                  <el-input v-model="form.address" autocomplete="off" :disabled="true" />
                </el-form-item>
                <el-form-item label="省份" :label-width="formLabelWidth">
                  <el-input v-model="form.state" autocomplete="off" :disabled="true" />
                </el-form-item>
                <el-form-item label="城市" :label-width="formLabelWidth">
                  <el-input v-model="form.city" autocomplete="off" :disabled="true" />
                </el-form-item>
                <el-form-item label="数量" :label-width="formLabelWidth">
                  <el-input v-model="form.number" autocomplete="off" :disabled="true" />
                </el-form-item>
                <el-form-item label="电话" :label-width="formLabelWidth">
                  <el-input v-model="form.phone" autocomplete="off" :disabled="true" />
                </el-form-item>
                <el-form-item label="邮编" :label-width="formLabelWidth">
                  <el-input v-model="form.postcode" autocomplete="off" :disabled="true" />
                </el-form-item>
                <el-form-item label="运费" :label-width="formLabelWidth">
                  <el-input v-model="form.shipfee" autocomplete="off" :disabled="true" />
                </el-form-item>
                <el-form-item label="订单价格" :label-width="formLabelWidth">
                  <el-input v-model="form.totalFee" autocomplete="off" :disabled="true" />
                </el-form-item>
              </el-form>
              <div slot="footer" class="dialog-footer">
                <el-button type="warning" icon="el-icon-close" @click="cancelDialog">取 消</el-button>
                <el-button type="success" icon="el-icon-bank-card" @click="dialogFormVisibleForPay = true">支 付</el-button>
              </div>
            </el-dialog>
            <el-dialog title="请输入支付密码" :visible.sync="dialogFormVisibleForPay">
              <el-form :model="forM">
                <el-form-item label="Password" :label-width="formLabelWidth">
                  <el-input v-model="forM.password" autocomplete="off" placeholder="请输入您的支付密码" show-password />
                </el-form-item>
              </el-form>
              <div slot="footer" class="dialog-footer">
                <el-button type="warning" icon="el-icon-close" @click="cancelpay">取 消</el-button>
                <el-button type="success" icon="el-icon-money" @click="payorder">支 付</el-button>
              </div>
            </el-dialog>
          </el-tab-pane>
          <el-tab-pane label="待发货" name="awaitingShipment">
            <el-table
              :data="awaShipList"
              style="width: 100%"
              height="600px"
            >
              <el-table-column
                prop="proname"
                label="商品名称"
                width="150"
              />
              <el-table-column
                prop="proprice"
                label="商品价格"
                width="100"
              />
              <el-table-column
                prop="prosku"
                label="sku编码"
                width="100"
              />
              <el-table-column
                prop="proorderID"
                label="订单号"
                width="150"
              />
              <el-table-column
                prop="prototal"
                label="订单价格"
                width="100"
              />
              <el-table-column
                prop="pronumber"
                label="商品数量"
                width="100"
              />
              <el-table-column>
                <template slot-scope="scope">
                  <el-button
                    size="mini"
                    type="warning"
                    @click="handleView(scope.$index, scope.row)"
                  >详情</el-button>
                </template>
              </el-table-column>
            </el-table>
          </el-tab-pane>
          <el-tab-pane label="已发货" name="shipped">
            <el-table
              :data="shippedList"
              style="width: 100%"
              height="600px"
            >
              <el-table-column
                prop="proname"
                label="商品名称"
                width="150"
              />
              <el-table-column
                prop="proprice"
                label="商品价格"
                width="100"
              />
              <el-table-column
                prop="prosku"
                label="sku编码"
                width="100"
              />
              <el-table-column
                prop="proorderID"
                label="订单号"
                width="150"
              />
              <el-table-column
                prop="prototal"
                label="订单价格"
                width="100"
              />
              <el-table-column
                prop="pronumber"
                label="商品数量"
                width="100"
              />
              <el-table-column>
                <template slot-scope="scope">
                  <el-button
                    size="mini"
                    type="success"
                    @click="handleShip(scope.$index, scope.row)"
                  >物流</el-button>
                  <el-button
                    size="mini"
                    type="warning"
                    @click="handleView(scope.$index, scope.row)"
                  >详情</el-button>
                </template>
              </el-table-column>
            </el-table>
          </el-tab-pane>
          <el-tab-pane label="已完成" name="completed">
            <el-table
              :data="completedList"
              style="width: 100%"
              height="600px"
            >
              <el-table-column
                prop="proname"
                label="商品名称"
                width="150"
              />
              <el-table-column
                prop="proprice"
                label="商品价格"
                width="100"
              />
              <el-table-column
                prop="prosku"
                label="sku编码"
                width="100"
              />
              <el-table-column
                prop="proorderID"
                label="订单号"
                width="150"
              />
              <el-table-column
                prop="prototal"
                label="订单价格"
                width="100"
              />
              <el-table-column
                prop="pronumber"
                label="商品数量"
                width="100"
              />
              <el-table-column>
                <template slot-scope="scope">
                  <el-button
                    size="mini"
                    type="warning"
                    @click="handleView(scope.$index, scope.row)"
                  >详情</el-button>
                </template>
              </el-table-column>
            </el-table>
          </el-tab-pane>
          <el-tab-pane label="已取消" name="camceled">
            <el-table
              :data="cancelList"
              style="width: 100%"
              height="600px"
            >
              <el-table-column
                prop="proname"
                label="商品名称"
                width="150"
              />
              <el-table-column
                prop="proprice"
                label="商品价格"
                width="100"
              />
              <el-table-column
                prop="prosku"
                label="sku编码"
                width="100"
              />
              <el-table-column
                prop="proorderID"
                label="订单号"
                width="150"
              />
              <el-table-column
                prop="prototal"
                label="订单价格"
                width="100"
              />
              <el-table-column
                prop="pronumber"
                label="商品数量"
                width="100"
              />
              <el-table-column>
                <template slot-scope="scope">
                  <el-button
                    size="mini"
                    type="warning"
                    @click="handleView(scope.$index, scope.row)"
                  >详情</el-button>
                </template>
              </el-table-column>
            </el-table>
          </el-tab-pane>
          <el-dialog title="订单详情" :visible.sync="dialogFormVisibleForOderView">
            <el-form :model="Form">
              <el-form-item label="订单ID" :label-width="formLabelWidth">
                <el-input v-model="Form.orderID" autocomplete="off" :disabled="true" />
              </el-form-item>
              <el-form-item label="商品ID" :label-width="formLabelWidth">
                <el-input v-model="Form.proID" autocomplete="off" :disabled="true" />
              </el-form-item>
              <el-form-item label="商品数量" :label-width="formLabelWidth">
                <el-input v-model="Form.proNumber" autocomplete="off" :disabled="true" />
              </el-form-item>
              <el-form-item label="商品单价" :label-width="formLabelWidth">
                <el-input v-model="Form.proPrice" autocomplete="off" :disabled="true" />
              </el-form-item>
              <el-form-item label="物流跟踪号" :label-width="formLabelWidth">
                <el-input v-model="Form.shipNumber" autocomplete="off" :disabled="true" />
              </el-form-item>
              <el-form-item label="物流公司" :label-width="formLabelWidth">
                <el-input v-model="Form.shipCompany" autocomplete="off" :disabled="true" />
              </el-form-item>
            </el-form>
            <div slot="footer" class="dialog-footer">
              <el-button type="warning" icon="el-icon-close" @click="cancelDialogA">取 消</el-button>
            </div>
          </el-dialog>
          <el-dialog title="物流详情" :visible.sync="dialogFormVisibleForShipView">
            <el-form :model="Formm">
              <el-form-item label="订单ID" :label-width="formLabelWidth">
                <el-input v-model="Formm.orderID" autocomplete="off" :disabled="true" />
              </el-form-item>
            </el-form>
              <el-timeline>
                <el-timeline-item
                  v-for="(activity, index) in activities"
                  :key="index"
                  :type="activity.type"
                  :size="activity.size"
                  :timestamp="activity.timestamp"
                >
                  {{ activity.content }}
                </el-timeline-item>
              </el-timeline>
            <div slot="footer" class="dialog-footer">
              <el-button type="warning" icon="el-icon-close" @click="cancelDialogB">取 消</el-button>
            </div>
            </el-dialog>
        </el-tabs>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import { searchawaPay } from '../../api/orderManage'
import { searchawaShip } from '../../api/orderManage'
import { searchShip } from '../../api/orderManage'
import { searchComplete } from '../../api/orderManage'
import { searchCancel } from '../../api/orderManage'
import { getOrderDetail } from '../../api/orderManage'
import { getSha } from '../../api/orderManage'
import { PayOrder } from '../../api/orderManage'
import { getShipDetail } from '../../api/orderManage'

export default {
  name: 'OrderManage',
  data() {
    return {
      // 输入的查询网店名称
      formInline: {
        store: ''
      },
      // 支付信息确认表单
      form: {
        address: '',
        state: '',
        city: '',
        number: '',
        phone: '',
        postcode: '',
        shipfee: '',
        receiver: '',
        // 订单价格
        totalFee: ''
      },
      activeName: '',
      // 待发货订单列表
      awaShipList: [{ proname: 'Anta', proprice: '25', prosku: '1111', proorderID: '3656566', prototal: '30', pronumber: '1' },
        { proname: 'LiNing', proprice: '45', prosku: '2345', proorderID: '3656567', prototal: '50', pronumber: '1' }, {
          proname: 'Tebu', proprice: '30', prosku: '2346', proorderID: '3656568', prototal: '35', pronumber: '1'
        }],
      // 正在运输中订单列表
      shippedList: [{ proname: 'NewBalance', proprice: '25', prosku: '1111', proorderID: '3656569', prototal: '30', pronumber: '1' }],
      // 已完成订单列表
      completedList: [{ proname: 'Apple', proprice: '25', prosku: '1111', proorderID: '3656570', prototal: '30', pronumber: '1' }],
      // 已取消订单列表
      cancelList: [{ proname: 'HUAWEI', proprice: '25', prosku: '1111', proorderID: '3656571', prototal: '30', pronumber: '1' }],
      // 待支付订单列表
      awaPayList: [{ proname: 'nike', proprice: '25', prosku: '1111', proorderID: '3656563', prototal: '30', pronumber: '1' },
        { proname: 'adidas', proprice: '45', prosku: '2345', proorderID: '3656564', prototal: '50', pronumber: '1' }, {
          proname: 'puma', proprice: '30', prosku: '2346', proorderID: '3656565', prototal: '35', pronumber: '1'
        }],
      // 显示物流状态的表格
      activities: [{ content: '已同步到仓库',
        timestamp: '2018-04-12 20:46',
        size: 'large',
        type: 'success' }, { content: '已出库',
        timestamp: '2018-04-03 20:46',
        size: 'large',
        type: 'plain' }, { content: '发货中',
        timestamp: '2018-04-04 20:46',
        size: 'large',
        type: 'plain' }, { content: '正在派送中',
        timestamp: '2018-04-04 20:46',
        size: 'large',
        type: 'plain' }],
      // 支付确认信息的对话框
      dialogFormVisible: false,
      // 查看订单详情的对话框
      dialogFormVisibleForOderView: false,
      // 物流详情对话框
      dialogFormVisibleForShipView: false,
      // 输入支付密码的对话框
      dialogFormVisibleForPay: false,
      // 订单详情数据表单
      Form: {
        orderID: '',
        proID: '',
        proNumber: '',
        proPrice: '',
        shipNumber: '',
        shipCompany: ''
      },
      forM: {
        password: ''
      },
      Formm: {
        orderID: ''
      },
      formLabelWidth: '120px',
	  currentOrder: ''
    }
  },
  methods: {
    // 根据网店名称查询到该网店相关联的销售订单
    searchorder() {
      if (this.formInline.store === '') {
        this.$message({
          type: 'warning',
          message: '网点名称为空哦~请输入网店名称',
          showClose: true
        })
      } else {
        searchawaPay({//待支付
	      dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
          str_Name: this.formInline.store
        }).then(res => {
          this.awaPayList = res.data
        })
        searchawaShip({//代发货
		  dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
          str_Name: this.formInline.store
        }).then(res => {
          this.awaShipList = res.data
        })
        searchShip({//已发货
		  dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
          str_Name: this.formInline.store
        }).then(res => {
          this.shippedList = res.data
        })
        searchComplete({
		  dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
          str_Name: this.formInline.store
        }).then(res => {
          this.completedList = res.data
        })
        searchCancel({
		  dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
          str_Name: this.formInline.store
        }).then(res => {
          this.cancelList = res.data
        })
        this.$message({
          type: 'success',
          message: '订单表格导入成功哦~亲',
          showClose: true
        })
      }
    },
    // 处理标签页点击的方法
    handleClick(tab, event) {
      console.log(tab, event)
    },
    // 点击每一行后的按钮 将订单的相关信息显示在对话框中表单的方法
    handlePay(index, row) {
      console.log(index, row)
      this.dialogFormVisible = true
      this.form.totalFee = row.prototal
      this.form.number = row.pronumber
	  this.currentOrder = row.proorderID
      getSha({
        orderID: row.proorderID
      }).then(res => {
        this.form.receiver = res.data[0].orReceiver
        this.form.address = res.data[0].orAddress
        this.form.state = res.data[0].orState
        this.form.city = res.data[0].orCity
        this.form.phone = res.data[0].orPhone
        this.form.postcode = res.data[0].orPostCode
        this.form.shipfee = res.data[0].orShipfee
        this.$message({
          type: 'success',
          showClose: true,
          message: '亲~请您确认您的订单信息后再支付哦'
        })
      })
    },
    // 关闭支付确认信息对话框方法
    cancelDialog() {
      this.dialogFormVisible = false
      this.form.receiver = ''
      this.form.address = ''
      this.form.state = ''
      this.form.city = ''
      this.form.number = ''
      this.form.phone = ''
      this.form.postcode = ''
      this.form.shipfee = ''
    },
    // 点击每一项后的查询按钮 查看订单明细的方法
    handleView(index, row) {
      console.log(row.proorderID)
      this.dialogFormVisibleForOderView = true
      this.Form.orderID = row.proorderID
      this.Form.proNumber = row.pronumber
      this.Form.proPrice = row.proprice
      getOrderDetail({
        order_ID: row.proorderID
      }).then(res => {
        this.Form.proID = res.data[0].pro_ID
        this.Form.shipNumber = res.data[0].ship_Number
        this.Form.shipCompany = res.data[0].ship_Company
        this.$message({
          type: 'success',
          showClose: true,
          message: '亲~这是该订单的详情哦'
        })
      })
    },
    // 关闭订单详情对话框
    cancelDialogA() {
      this.dialogFormVisibleForOderView = false
      this.Form.orderID = ''
      this.Form.proID = ''
      this.Form.proPrice = ''
      this.Form.proNumber = ''
      this.Form.shipCompany = ''
      this.Form.shipNumber = ''
    },
    // 向后端传入dsrID 和支付密码进行支付的方法
    /* payorder() {
      // eslint-disable-next-line no-empty
      if (this.forM.password === '') {
        this.$message({
          type: 'warning',
          message: '亲~您的密码输入不能为空哦',
          showClose: true
        })
      } else {
        this.dialogFormVisibleForPay = false
        this.dialogFormVisible = false
        PayOrder({
          dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
          password: this.forM.password,
		  orderID: this.currentOrder
        }).then(res => {
          this.$message({
            type: 'success',
            showClose: true,
            message: '亲~您的订单支付成功 您的宝贝理你越来越近了'
          })
		this.currentOrder = ''
        })
      }
    }, */
		payorder() {
		      // eslint-disable-next-line no-empty
		      if (this.forM.password === '') {
		        this.$message({
		          type: 'warning',
		          message: '亲~您的密码输入不能为空哦',
		          showClose: true
		        })
		      } else {
		        this.dialogFormVisibleForPay = false
		        this.dialogFormVisible = false
		        PayOrder({
		          dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
		          password: this.forM.password,
				  orderID: this.currentOrder
		        }).then(res => {
				  console.log(res.code + "ayusgduhasbfduhabfuhbasbgf")
				  if(res.code != 200){
					  this.$message({
					    type: 'warning',
					    showClose: true,
					    message: '您的密码不正确或者余额不足'
					  })
				  }
				  else{
					  this.$message({
						type: 'success',
						showClose: true,
						message: '亲~您的订单支付成功 您的宝贝理你越来越近了'
					  })
					  this.currentOrder = ''
					  this.searchorder()
				  }
				  this.forM.password = ''
		        })
		      }
		    },
    // 关闭支付对话框的方法
    cancelpay() {
      this.dialogFormVisibleForPay = false
      this.forM.password = ''
    },
    // 查询物流详情的方法
    handleShip(index, row) {
      this.dialogFormVisibleForShipView = true
      this.Formm.orderID = row.proorderID
      getShipDetail({
        order_ID: row.proorderID
      }).then(res => {
        if (res.data[0].DELIVERY_STS === '1') {
          this.activities[0].type = 'success'
		  this.activities[1].type = 'plain'
		  this.activities[2].type = 'plain'
		  this.activities[3].type = 'plain'
        } else if (res.data[0].DELIVERY_STS === '2') {
          this.activities[1].type = 'success'
		  this.activities[0].type = 'plain'
		  this.activities[2].type = 'plain'
		  this.activities[3].type = 'plain'

        } else if (res.data[0].DELIVERY_STS === '3') {
          this.activities[2].type = 'success'
		  this.activities[0].type = 'plain'
		  this.activities[1].type = 'plain'
		  this.activities[3].type = 'plain'
        } else {
          this.activities[3].type = 'success'
		  this.activities[0].type = 'plain'
		  this.activities[2].type = 'plain'
		  this.activities[1].type = 'plain'
        }
        this.$message({
          type: 'success',
          showClose: true,
          message: '亲~这是宝贝的物流信息哦'
        })
      })
    },
    // 关闭物流详情对话框的方法
    cancelDialogB() {
      this.Formm.orderID = ''
      this.dialogFormVisibleForShipView = false
    }
  }
}
</script>

<style scoped>

</style>
