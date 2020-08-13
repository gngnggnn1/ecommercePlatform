<template>
  <div class="components-container">
    <aside>借卖方信息编辑</aside>
    <div class="myInfor-main">
      <el-form ref="form" :label-position="left" :model="form" label-width="100px">
        <el-form-item label="借卖方姓名">
          <el-input v-model="form.name" class="myInfor-input" placeholder="请编辑借卖方姓名" />
        </el-form-item>
        <el-form-item label="借卖方备注">
          <el-input v-model="form.remark" class="myInfor-input" placeholder="请编辑借卖方邮箱" />
        </el-form-item>
        <el-form-item>
          <el-button type="success" @click="onSubmitSave" icon="el-icon-document-checked">保存</el-button>
          <el-button type="warning" @click="openStore" icon="el-icon-shopping-cart-full">我的网店</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>
<script>
// eslint-disable-next-line no-unused-vars
import { getBVO } from '../../api/myInfor'
import { editBVO } from '../../api/myInfor';

export default {
  data() {
    return {
      form: {
        name: '',
        remark: ''
      }
    }
  },
  created() {
    this.getbvo()
  },
  methods: {
    onSubmitSave() {
      this.$confirm('确认编辑借卖方信息？', '确认编辑', {
        confirmButtonText: '确认编辑',
        cancelButtonText: '取消',
        iconClass: 'el-icon-edit'
      }).then(() => {
        editBVO({
          dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
          dsr_Name: this.form.name,
          dsr_remark: this.form.remark
        })
        this.$message({
          showClose: true,
          type: 'success',
          message: '保存成功'
        })
      })
    },
    openStore() {
			const vm = this
			vm.$router.push('store')
    },
    getbvo() { // 从后端获取借卖方的姓名和备注
      getBVO({
        dsrID: JSON.parse(window.sessionStorage.getItem("DSRID"))
      }).then(res => {
		console.log("Enter")
		console.log(res)
        this.form.name = res.data[0].dropShipperName// 后端传入前端的姓名
        this.form.remark = res.data[0].dropShipperRemark // 后端传入前端的备注
      }).catch(res => {
		  console.log(res.code)
	  })
    }
  }
}
</script>
<style lang="scss" scoped>
  .myInfor-container {
    margin: 10px 20px 0;
    overflow: hidden;
  }
  .myInfor-main {
    margin: 10px;
  }
  .myInfor-input {
    width: 500px;
  }
</style>
