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

    <el-tabs v-model="activeName" type="card" @tab-click="handleClick">
    <el-tab-pane label="待支付" name="first">
        <el-table
    :data="tableData"
    height="250"
    border
    style="width: 100%">
    <el-table-column
      prop="commodityName"
      label="商品标题"
      width="180">
    </el-table-column>
    <el-table-column
      prop="price"
      label="价格"
      width="180">
    </el-table-column>
    <el-table-column
      prop="amount"
      label="数量">
    </el-table-column>
    <el-table-column
      prop="sku"
      label="sku">
    </el-table-column>
    <el-table-column
      prop="orderCode"
      label="订单编号">
    </el-table-column>
    <el-table-column
      prop="orderCreateTime"
      label="订单创建时间">
    </el-table-column>
  </el-table>
    </el-tab-pane>
    <el-tab-pane label="配置管理" name="second">
         <el-table
    :data="tableData2"
    height="250"
    border
    style="width: 100%">
    <el-table-column
      prop="commodityName2"
      label="商品标题"
      width="180">
    </el-table-column>
    <el-table-column
      prop="price2"
      label="价格"
      width="180">
    </el-table-column>
    <el-table-column
      prop="amount2"
      label="数量">
    </el-table-column>
    <el-table-column
      prop="sku2"
      label="sku">
    </el-table-column>
    <el-table-column
      prop="orderCode2"
      label="订单编号">
    </el-table-column>
    <el-table-column
      prop="orderCreateTime2"
      label="订单创建时间">
    </el-table-column>
    <template slot-scope="scope">
          <el-button type="primary" size="mini" @click="handleEdit(scope.$index, scope.row)">发货</el-button>
        </template>
  </el-table>
    </el-tab-pane>
    <el-tab-pane label="角色管理" name="third">角色管理</el-tab-pane>
    <el-tab-pane label="定时任务补偿" name="fourth">定时任务补偿</el-tab-pane>
  </el-tabs>

    

    
  </div>
</div>
  
</template>

<script>

export default {
  data() {
    return {
      tableData: [
        { commodityName:"1",
          price:"$10",
          amount:"10",
          sku: "GM001031",
          orderCode: "123123",
          orderCreateTime:"	2017-23-02 19:00:20"
        },
        { commodityName:"1",
          price:"$10",
          amount:"10",
          sku: "GM001031",
          orderCode: "123123",
          orderCreateTime:"	2017-23-02 19:00:20"
        },
        { commodityName:"1",
          price:"$10",
          amount:"10",
          sku: "GM001031",
          orderCode: "123123",
          orderCreateTime:"	2017-23-02 19:00:20"
        }
      ],
      tableData2: [
        { commodityName2:"1",
          price2:"$10",
          amount2:"10",
          sku2: "GM001031",
          orderCode2: "123123",
          orderCreateTime2:"	2017-23-02 19:00:20"
        },
        { commodityName2:"1",
          price2:"$10",
          amount:"10",
          sku: "GM001031",
          orderCode: "123123",
          orderCreateTime:"	2017-23-02 19:00:20"
        },
        { commodityName2:"1",
          price:"$10",
          amount:"10",
          sku: "GM001031",
          orderCode: "123123",
          orderCreateTime:"	2017-23-02 19:00:20"
        }
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
