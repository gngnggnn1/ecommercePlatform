<template>
  <div class="components-container">
    <el-container>
      <el-aside>
        <img :src="require('../../assets/img/A.webp')" style="height: 300px ;weight: 300px">
      </el-aside>
      <el-main>
        <p class="span-name">{{ title }}</p>
        <p class="span-price">{{ price }}</p>
        <p class="span-detail">{{ sku }}</p>
        <p class="span-detail">{{ brand }}</p>
        <el-row>
          <el-button type="warning" @click="dropship">Dropship Now</el-button>
          <el-button type="success" @click="addwish">Add to Wish List</el-button>
        </el-row>
		<el-dialog title="选择要添加的店铺" :visible.sync="dialogFormVisible">
		  <el-cascader
		    v-model="storeValue"
		    :options="storeOptions"
		    @change="handleChange"
		    :show-all-levels="false"
		    :props="props"
		  />
		  <span slot="footer" class="dialog-footer">
		    <el-button type="warning" @click="cancelDia">取 消</el-button>
		    <el-button type="success" @click="pushtoStore">确 定</el-button>
		  </span>
		</el-dialog>
      </el-main>
    </el-container>
    <el-tabs type="card" @tab-click="handleClick">
      <el-tab-pane label="Description" name="Description">{{description}}</el-tab-pane>
    </el-tabs>
  </div>
</template>

<script>
import { addWish } from '../../api/proDetail'
import { dropShip } from '../../api/proDetail'
import { getDetail } from '../../api/proDetail'
import {pushToStore} from '../../api/proDetail'
import {getamaList} from '../../api/proDetail'
import {getebayList} from '../../api/proDetail'
import {getAmaList} from '../../api/mvoStore'
import {getEbayList} from '../../api/mvoStore'
export default {
  name: 'ProDetail',
  data() {
    return {
      activeName: 'Ama',
      imgSrc: '',
      title: '足球鞋1',
      price: '',
      brand: '',
      sku: '',
      description: '',
	  dialogFormVisible: false,
	  storeValue: '',
	  storeOptions: [{
	    value: '1',
	    label: 'Amazon',
	    children: [] }, {
	    value: '2',
	    label: 'Ebay',
	    children: []
	  }],
	  props: { multiple: true }

    }
  },
  created() {
    this.getdetail()
  },
  methods: {
	dropship() {
	  this.dialogFormVisible = true
	  getAmaList({
	    dsrID: '1'
	  }).then(res => { 
		console.log(res.data)
	    res.data.forEach(item => {
	      this.storeOptions[0].children.push({ value: item.STR_ID, label: item.ama })
	    })
	  })
	  getEbayList({
	    dsrID: '1'
	  }).then(res => {
	    res.data.forEach(item => {
	      this.storeOptions[1].children.push({ value: item.STR_ID, label: item.eba })
	    })
	  })
	},
	pushtoStore() {
	  console.log(this.storeValue)
	  this.storeValue.forEach(item => {
		pushToStore({
			str_ID: item[1],
			pro_Name: '足球鞋1'
		}).then(res => {
			
		})
	  })
	  this.$message({
	  	showClose: true,
	  	type: 'success',
	  	message: '添加成功'
	  })
	},

    addwish() {
      addWish({
        pro_Name: '足球鞋1',
        dsr_ID: '1'
      }).then(res => {
    if(res.code === 200)
    {
			this.$message({
			showClose: true,
			type: 'success',
			message: '添加成功'
    })}
    else {
      this.$message({
			showClose: true,
			type: 'danger',
      message: '失败：重复添加'
      })
    }  
		
		  
      })
    },
    getdetail() {
      getDetail({
        pro_Name: '足球鞋1'
      }).then(res => {
		console.log(res)
        this.price = res.data[0].price
        this.brand = res.data[0].brand
        this.imgSrc = res.data[0].imgSrc
        this.sku = res.data[0].sku
        this.description = res.data[0].description
        this.$message({
          showClose: true,
          type: 'success',
          message: '导入成功'
        })
      })
    },
    handleClick(tab, event) {
      console.log(tab, event)
    },
	cancelDia() {
	  this.dialogFormVisible = false
	  this.storeValue = []
	},
	handleChange() {
	  // console.log(this.storeValue)
	}

  }
}
</script>

<style scoped>
  .span-name{
    font-size: 20px;
    font-weight: bold;
  }
  .span-price{
    font-size: 17px;
    color: red;
  }
  .span-detail{
    font-size: 17px;
    font-weight: bolder;
  }
</style>
