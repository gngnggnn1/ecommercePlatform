<template>
  <div class="components-container">
    <div class="proView-list">
      <aside>Feature Product</aside>
      <el-carousel :interval="4000" type="card" height="200px">
        <el-carousel-item v-for="item in products" :key="item.imgSrc">
          <img :src="require('../../assets/img/'+item.imgSrc)" style="height: 150px ;weight: 150px" alt="products" @click="showDetail">
          <el-row class="title">{{ item.title }}</el-row>
          <el-row class="price">${{ item.price }}</el-row>
        </el-carousel-item>
      </el-carousel>
    </div>
  </div>

</template>
<script>
import { getProducts } from '../../api/proView'
export default {
  data() {
    return {
      products: [{ title: 'Nike Superfly 7 Elite FG', imgSrc: 'A.webp', price: '2399' }, {
        title: 'Nike Vapor 13 Elite FG', imgSrc: 'B.webp', price: '1399' }, {
        title: 'Nike Superfly 7 Elite MDS AG-PRO', imgSrc: 'C.webp', price: '1599' }, {
        title: 'Nike Superfly 7 Elite CR7 FG', imgSrc: 'D.webp', price: '1799'
      }]
    }
  },
  created() {
    this.searchPro()
  },
  methods: {
    searchPro() {
      getProducts({
      }).then(res => {
        this.$message({
          showClose: true,
          type: 'success',
          message: '导入成功'
        })
        this.products = res.data
      })
    },
    showDetail() {
      const vm = this
      vm.$router.push('proDetail')
    }
  }
}
</script>
<style lang="scss" scoped>
  .proView-list {
    margin: 10px 10px 0;
    overflow: hidden;
  }
  ul{
    display:inline;
    white-space: nowrap;
  }
  ul li{
    padding: 10px 20px;
    display: inline-block;
    white-space:nowrap;
  }
  .price{
    color: red;
    font-weight: bold;
  }
  .title{
    font-weight: bold;
  }

</style>
