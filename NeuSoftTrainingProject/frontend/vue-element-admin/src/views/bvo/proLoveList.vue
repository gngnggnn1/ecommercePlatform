<template>
  <div class="components-container">
    <el-row>
      <el-button type="success" class="el-icon-delete" @click="deletepro">删除选中商品</el-button>
    </el-row>
    <el-table
      ref="multipleTable"
      :data="wishList"
      tooltip-effect="dark"
      style="width: 755px"
      @selection-change="handleSelectionChange"
    >
      <el-table-column
        type="selection"
        width="55"
      />
      <el-table-column label="商品图片" width="200px">
        <template slot-scope="scope">
          <img :src="require('../../assets/img/'+scope.row.imgSrc)" width="70" height="70">
        </template>
      </el-table-column>
      <el-table-column
        prop="proname"
        label="商品名称"
        width="100px"
      />
      <el-table-column
        prop="proprice"
        label="商品价格"
        width="100px"
      />
      <el-table-column
        prop="prosku"
        label="商品sku"
        width="100px"
      />
      <el-table-column
        prop="imgSrc"
        label="imgSrc"
        width="100px"
      />
	  <el-table-column
	    prop="proID"
	    label="商品ID"
	    width="100px"
	  />
    </el-table>
  </div>
</template>

<script>
import { deletePro } from '../../api/proWishList'
import { getWishList } from '../../api/proWishList'

export default {
  name: 'ProLoveList',
  data() {
    return {
      wishList: [{ proname: 'Nike Superfly 7 Elite FG', proprice: '￥1499', prosku: '2545464471', imgSrc: 'A.webp' },
        { proname: 'Nike Vapor 13 Elite FG', proprice: '￥2399', prosku: '2545464472', imgSrc: 'B.webp' },
        { proname: 'Nike Superfly 7 Elite MDS AG-PRO', proprice: '￥1599', prosku: '2545464473', imgSrc: 'C.webp' },
        { proname: 'Nike Superfly 7 Elite CR7 FG', proprice: '￥2299', prosku: '254564474', imgSrc: 'D.webp' }],
      multipleSelection: [],
      deletenameList: []
    }
  },
  created() {
    this.wishlist()
  },
  methods: {
    handleSelectionChange(val) {
      this.multipleSelection = val
    },
    deletepro() {
      if (this.multipleSelection.length === 0) {
        this.$message({
          showClose: true,
          type: 'warning',
          message: '请选择要删除的商品'
        })
      } else {
		  console.log(this.multipleSelection)
		  this.multipleSelection.forEach(row => {
		    deletePro({
			  dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
			  proID: row.proID
			}).then(res => {

				})
			})
			location.reload()
		/* getWishList({
			dsr_ID: '1',
			}).then(res => {
			console.log(res)
			  this.wishList = res.data
			  this.$message({
			    showClose: true,
			    type: 'success',
			    message: '删除成功'
			  })
			}) */

      }
    },
    wishlist() {
      getWishList({
        dsr_ID: JSON.parse(window.sessionStorage.getItem("DSRID")),
      }).then(res => {
		console.log(res)
        this.wishList = res.data
        this.$message({
          showClose: true,
          type: 'success',
          message: '导入成功'
        })
      })
    }
  }
}
</script>

<style scoped>

</style>
