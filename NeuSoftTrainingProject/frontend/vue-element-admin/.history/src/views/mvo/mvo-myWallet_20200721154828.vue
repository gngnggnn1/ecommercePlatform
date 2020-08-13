<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        我的钱包
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />账户信息
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>账户信息</span>
         <el-button style="float: right; padding: 3px 0; margin-left: 20px" type="text" @click="toDetail">流水明细</el-button>
        <el-button style="float: right; padding: 3px 0; margin-left: 20px" type="text" @click="showWithdrawForm">提现</el-button>
        <el-button style="float: right; padding: 3px 0" type="text" @click="showDepositForm">充值</el-button>
      </div>
      <el-form :model="form" ref="form" label-width="150px">
        <el-form-item prop="account_name">
          <span slot="label">用户名</span>
          <el-input class="formInput" v-model="form.account_name" disabled></el-input>
        </el-form-item>
        <el-form-item prop="email">
          <span slot="label">邮箱</span>
          <el-input class="formInput" v-model="form.email" disabled></el-input>
        </el-form-item>
        <el-form-item prop="status">
          <span slot="label">状态</span>
          <el-input class="formInput" v-model="form.status" disabled></el-input>
        </el-form-item>
      </el-form>
      <el-form :model="form1" ref="form1" label-width="150px">
        <el-form-item prop="available_money">
          <span slot="label">可用金额</span>
          <el-input class="formInput" v-model="form1.available_money" disabled></el-input>
        </el-form-item>
        <el-form-item prop="depositing_money">
          <span slot="label">充值中金额</span>
          <el-input class="formInput" v-model="form1.depositing_money" disabled></el-input>
        </el-form-item>
        <el-form-item prop="withdrawing_money">
          <span slot="label">提现中金额</span>
          <el-input class="formInput" v-model="form1.withdrawing_money" disabled></el-input>
        </el-form-item>
        <el-form-item prop="currency">
          <span slot="label">账户币种</span>
          <el-input class="formInput" v-model="form1.currency" disabled></el-input>
        </el-form-item>
      </el-form>
    </el-card>

    <el-dialog title="提现" :visible.sync="withdrawVisible"  width="30%">
      <el-form ref="withdrawForm" :model="withdrawForm" label-width="80px">
        <el-form-item label="提现金额">
          <el-input v-model="withdrawForm.withdrawing_money"></el-input>
        </el-form-item>
        <el-form-item label="支付密码">
          <el-input v-model="withdrawForm.password" type="password"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="withdrawVisible = false">取 消</el-button>
        <el-button type="primary" @click="handleWithdraw">确 认</el-button>
      </span>
    </el-dialog>

    <el-dialog title="充值" :visible.sync="depositVisible" width="30%">
      <el-form ref="depositForm" :model="depositForm" label-width="80px">
        <el-form-item label="充值金额">
          <el-input v-model="depositForm.depositing_money"></el-input>
        </el-form-item>
        <el-form-item label="支付密码">
          <el-input v-model="depositForm.password"  type="password"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="depositVisible = false">取 消</el-button>
        <el-button type="primary" @click="handleDeposit">确 认</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
import { getWalletInfo, searchBusinessFlow, chargeAndDeposit, dateFormat} from "@/api/wallet";
export default {
  data() {
    return {
      username:'',
      password:'',
      buyer_id:'',
      form: [],
      form1:[],
      waa: {},
      waf: {},
      depositForm:[],
      withdrawForm:[],
      withdrawVisible: false,
      depositVisible: false,

    };
  },
  created() {
    getWalletInfo(JSON.parse(window.sessionStorage.getItem("USER_AUTH")).username).then(res => {
      if (res.code == "200") {
        this.form = res.data.waa;
        this.form1 = res.data.waf;
        this.username = JSON.parse(window.sessionStorage.getItem("USER_AUTH")).username
        this.password = this.form.password
        this.buyer_id = this.form.buyer_id
        window.sessionStorage.setItem('buyer_id',this.buyer_id)
        this.form.status = (this.form.status== 7 ?"正常":"冻结")
      }
    }).catch(error =>{
      this.$router.push("mvo-myWalletRegis");
    })
  },
  methods: {
    toDetail(){
      this.$router.push('mvo-withdrawDetail')
    },
    showWithdrawForm(){
      this.withdrawVisible = true
    },
    showDepositForm(){
      this.depositVisible = true
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    },
    handleWithdraw(){
      let request = {}
      let waa_ = {}
      waa_['password'] = this.withdrawForm.password
      waa_['account_name'] = this.username
      let waf_ = {}
      waf_ = this.form1
      waf_['available_money'] = this.form1.available_money 
      waf_['withdrawing_money'] = parseFloat(this.withdrawForm.withdrawing_money) + parseFloat(this.withdrawForm.withdrawing_money)
      waf_['last_update_time'] = dateFormat("YYYY-mm-dd HH:MM:SS", new Date()) 
      let wta_ = {}
      wta_['buyer_id'] = this.buyer_id
      wta_['available_money_before'] = this.form1.available_money
      wta_['depositing_money_before'] = this.form1.depositing_money
      wta_['withdrawing_money_before'] = parseFloat(this.form1.withdrawing_money) + parseFloat(this.withdrawForm.withdrawing_money)
      wta_['available_money_after'] = parseFloat(this.form1.available_money) - parseFloat(this.withdrawForm.withdrawing_money)
      wta_['depositing_money_after'] = this.form1.depositing_money
      wta_['withdrawing_money_after'] = this.form1.withdrawing_money
      wta_['status'] = 2
      wta_['create_time'] =  dateFormat("YYYY-mm-dd HH:MM:SS", new Date()) 
      wta_['last_update_time'] =  dateFormat("YYYY-mm-dd HH:MM:SS", new Date()) 
      // let wtr_ = {}
      // wtr_['buyer_id'] = this.buyer_id
      // wtr_['account_name'] = this.form.account_name
      // wtr_['balance'] = parseFloat(this.form1.available_money) - parseFloat(this.withdrawForm.withdrawing_money)
      // wtr_['transaction_type'] = 2
      // wtr_['status'] = 2
      // wtr_['transaction_money'] = this.withdrawForm.withdrawing_money
      // wtr_['finance_type'] = 2
      // wtr_['last_update_time'] =  dateFormat("YYYY-mm-dd HH:MM:SS", new Date()) 
      request['waa'] = waa_
      request['waf'] = waf_
      request['wta'] = wta_
      // request['wtr'] = wtr_
      chargeAndDeposit(request).then(res => {
        if(res.code == 200){
          alert("提现已申请")
          this.$router.go(0)
        }
        else{
          alert("提现失败")
        }
      })
      this.withdrawVisible = false;
      
    },
    handleDeposit(){
      let request = {}
      let waa_ = {}
      waa_['password'] = this.depositForm.password
      waa_['account_name'] = this.username
      let waf_ = {}
      waf_ = this.form1
      waf_['available_money'] = this.form1.available_money
      waf_['depositing_money'] = parseFloat(this.depositForm.depositing_money) + parseFloat(this.form1.depositing_money)
      waf_['last_update_time'] = dateFormat("YYYY-mm-dd HH:MM:SS", new Date()) 
      let wta_ = {}
      wta_['buyer_id'] = this.buyer_id
      wta_['available_money_before'] = this.form1.available_money
      wta_['depositing_money_before'] = parseFloat(this.form1.depositing_money) + parseFloat(this.depositForm.depositing_money)
      wta_['withdrawing_money_before'] = this.form1.withdrawing_money 
      wta_['available_money_after'] = parseFloat(this.form1.available_money) + parseFloat(this.depositForm.depositing_money)
      wta_['depositing_money_after'] = this.form1.depositing_money
      wta_['withdrawing_money_after'] = this.form1.withdrawing_money
      wta_['status'] = 2
      wta_['create_time'] =  dateFormat("YYYY-mm-dd HH:MM:SS", new Date()) 
      wta_['last_update_time'] =  dateFormat("YYYY-mm-dd HH:MM:SS", new Date()) 
      // let wtr_ = {}
      // wtr_['buyer_id'] = this.buyer_id
      // wtr_['account_name'] = this.form.account_name
      // wtr_['balance'] = parseFloat(this.form1.available_money) + parseFloat(this.depositForm.depositing_money)
      // wtr_['transaction_type'] = 1
      // wtr_['transaction_money'] = this.depositForm.depositing_money
      // wtr_['finance_type'] = 1
      // wtr_['status'] = 2
      // wtr_['last_update_time'] =  dateFormat("YYYY-mm-dd HH:MM:SS", new Date()) 
      request['waa'] = waa_
      request['waf'] = waf_
      request['wta'] = wta_
      // request['wtr'] = wtr_
      console.log(request)
      chargeAndDeposit(request).then(res => {
        if(res.code == 200){
          alert("充值已申请")
          this.$router.go(0)
        }
        else{
          alert("充值失败")
        }
      })
      this.depositVisible = false;
      
    }
  }
};
</script>

<style>
.demo-ruleForm {
  display: block;
  font-size: 14px;
  padding-top: 8px;
  padding-left: 20px;
  padding-right: 20px;
  text-size-adjust: 100%;
  margin: 5%;
  margin-top: 15px;
  margin-left: 15%;
}
.formInput {
  /* margin-top: 14px;
  margin-left: 14px;
  height: 36px; */
  width: 204px;
}
.el-form-item__error {
  margin-left: 14px;
  position: relative;
}
#divider {
  margin: 0px;
}
.text {
  font-size: 14px;
}

.item {
  margin-bottom: 18px;
}

.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
}
.clearfix:after {
  clear: both;
}

.box-card {
  margin-top: 1%;
  margin-left:25%;
  width: 480px;
}

.el-input.is-disabled /deep/ .el-input__inner {
  color: #606266;
}
</style>