<template>
  <div class="components-container">
    <aside>我的店铺</aside>
    <el-button type="success" icon="el-icon-circle-plus-outline" @click="dialogFormVisible = true">新增店铺</el-button>
    <div class="mvoStore-container">
      <el-table :data="tableDataAma" height="200" style="width: 100%">
        <el-table-column
          prop="ama"
          label="Amazon"
          align="left"
        />
      </el-table>
      <el-table :data="tableDataEbay" height="200" style="width: 100%">
        <el-table-column
          prop="eba"
          label="Ebay"
          align="left"
        />
      </el-table>

      <el-dialog title="添加一个店铺" :visible.sync="dialogFormVisible">
        <el-form :model="form">
          <el-form-item label="店铺名称" :label-width="formLabelWidth">
            <el-input v-model="form.storeName" autocomplete="off" placeholder="请输入店铺名称"/>
          </el-form-item>
          <el-form-item label="网点网址" :label-width="formLabelWidth">
            <el-radio-group v-model="form.website">
              <el-radio label="1">Amazon</el-radio>
              <el-radio label="2">Ebay</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button type="warning" @click="closeDialog" icon="el-icon-close">取 消</el-button>
          <el-button type="success" @click="savestore" icon="el-icon-check">确 定</el-button>
        </div>
      </el-dialog>
    </div>
  </div>
</template>
<script>
import { getAmaList } from '../../api/mvoStore'
import { getEbayList } from '../../api/mvoStore'
import { saveStore } from '../../api/mvoStore'

export default {
  data() {
    return {
      // eslint-disable-next-line no-undef
      tableDataAma: [{ ama: 'StoreA' }, { ama: 'StoreB' }, { ama: 'StoreC' }],
      tableDataEbay: [{ eba: 'StoreD' }, { eba: 'StoreE' }, { eba: 'StoreF' }],
      dialogFormVisible: false,
      formLabelWidth: '120px',
      form: {
        storeName: '',
        website: ''
      }
    }
  },
  created() {
    this.getebaylist()
    this.getamalist()
  },
  methods: {
    getamalist() { // 从后端导入tableDataAma
      getAmaList({
        dsrID: 1
      }).then(res => {
        this.$message({
          showClose: true,
          type: 'success',
          message: '导入成功'
        })
        this.tableDataAma = res.data
      })
    },
    getebaylist() { // 从后端导入tableDataEbay
      getEbayList({
        dsrID: 1
      }).then(res => {
        this.$message({
          showClose: true,
          type: 'success',
          message: '导入成功'
        })
        this.tableDataEbay = res.data
      })
    },
    closeDialog() {
      this.dialogFormVisible = false
      this.form.website = ''
    },
    savestore() {
	  if(this.form.storeName === '' || this.form.website === ''){
		  this.$message({
		    showClose: true,
		    type: 'warning',
		    message: ' 您的信息不完整，无法添加',
		  })
	  } else{
		  this.dialogFormVisible = false
		  saveStore({
		    dsr_ID: '1',
		    store_Name: this.form.storeName,
		  		website_Name: this.form.website
		  }).then(res => {
		    this.$message({
		      showClose: true,
		      type: 'success',
		      message: ' 保存成功',
		    })
		  		this.form.website = ''
		  			this.form.storeName = ''
		  		    this.form.dsrID = ''
		  })
	  }
      
    }
  }
}
</script>
<style lang="scss" scoped>
  .mvoStore-container {
    margin: 10px 20px 0;
    overflow: hidden;
  }
</style>
