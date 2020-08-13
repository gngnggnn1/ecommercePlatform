<template>
  <div class="pageContent">
    <!-- <img src="@/views/mvo/pj.jpg" class="head_pic"> -->
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />商品分类&#38;主图
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>

    <div style="margin-top: 20px; margin-left: 20px; margin-bottom:20px">
    <span>
        商品标题：
        <el-input style="width:200px" ></el-input>
      </span>
      <el-button type="primary" style="margin-left: 10px">
        search
        <font-awesome-icon :icon="['fas','search']" size="2px" />
      </el-button>
      <el-button type="primary" style="margin-left: 10px" @click="dialogVisible = true">
        新增
      </el-button>
    </div>

    <template>
        <el-table
          ref="multipleTable"
          :data="tableData.slice((currentPage-1)*pageSize,currentPage*pageSize)"
          tooltip-effect="dark"
          style="width: 100%"
          @selection-change="handleSelectionChange"
        >
      <el-table-column type="selection" width="55"></el-table-column>
      <el-table-column
        prop="title"
        label="商品标题"
        width="200px"
        align="center"
        :render-header="renderheader"
      ></el-table-column>
      <el-table-column
        prop="cetegoryNames"
        label="分类"
        width="200px"
        align="center"
        :render-header="renderheader"
      ></el-table-column>
      <el-table-column
        prop="uri"
        label="主图"
        align="center"
        :render-header="renderheader"
        show-overflow-tooltip
      >
      <template slot-scope="scope">
        <!-- <img :src="scope.row.uri" width="40" height="40"/> -->
        <el-popover placement="right" title="" trigger="hover">
          <img :src="scope.row.uri" />
          <img slot="reference" :src="scope.row.uri" :alt="scope.row.image_url" style="max-height: 50px;max-width: 130px">
        </el-popover>
      </template>
      </el-table-column>
      <el-table-column
        prop="sts_cd"
        label="状态"
        :render-header="renderheader"
        align="center"
        show-overflow-tooltip
      >
      <template slot-scope="scope">
        <el-tag
          :type="getTag(scope.row.sts_cd)[0]"
          disable-transitions>{{getTag(scope.row.sts_cd)[1]}}</el-tag>
      </template>
      </el-table-column>
      <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button type="primary" size="mini" @click="dialogVisible = true">编辑</el-button>
          <el-button type="success" size="mini" @click="handleOn(scope.$index, scope.row)">上架</el-button>
          <el-button type="danger" size="mini" @click="handleOff(scope.$index, scope.row)">下架</el-button>
        </template>
      </el-table-column>
    </el-table>
    <div class="block">
          <el-row :gutter="100">
            <!--批量上架-->
            <el-col :span="8" class="toolbar" style="padding-bottom: 0;">
              <el-form :inline="true" :model="filters">
                <el-form-item>
                  <el-button
                    type="primary"
                    icon="el-icon-import"
                    v-on:click="batchDelPar(selectedItem)"
                  >批量上架</el-button>
                </el-form-item>
              </el-form>
            </el-col>
            <el-col :span="8">
              <!--页面分割-->
              <el-pagination
                class="fy"
                background
                @current-change="handleCurrentChange"
                @size-change="handleSizeChange"
                :pager-count="5"
                :page-sizes="[5, 10, 15, 20]"
                :page-size="pageSize"
                layout="prev, pager, next, sizes, total, jumper"
                :total="total"
              ></el-pagination>
            </el-col>
          </el-row>
        </div>
      </template>

    <el-dialog title="商品信息" :visible.sync="dialogVisible" width="50%">
      <el-form ref="form" :model="form" label-width="80px">
          <div style="color: orange; margin-left: 13px; margin-bottom: 10px">商品标题准确、简洁、完整</div>
        <el-form-item label="商品标题">
    <el-select v-model="form.commodityName" placeholder="商品标题">
      <el-option label="qwe" value="qwe"></el-option>
      <el-option label="asdwqe" value="asdwqe"></el-option>
    </el-select>
    
  </el-form-item>
  <div style="color: orange; margin-left: 11px">请先选择GMC借卖平台商品大类，此分类决定了您的商品在借卖平台中展示的位置</div>
        <el-form-item label="商品分类">
          <el-radio-group v-model="form.class_">
      <el-radio label="qwe"></el-radio>
      <el-radio label="asdwqe"></el-radio>
    </el-radio-group>
        </el-form-item>
<div style="color: orange; margin-left: 11px">图片要求： 最多可以上传12张图：eBay 12张、Amazon 9张； 分辨率1000像素（高度）X 1000像素（宽度）以上； 正方形，为无水印白底图或情景图，商品占图片80%； 可以是多角度拍摄商品图片，也可以是细节图。</div>
        <el-form-item label="上传图片">
        <el-upload class="upload-img" ref="upload" action="https://jsonplaceholder.typicode.com/posts/" 
	        accept=".jpg" :auto-upload="false" :multiple="false">
	        <el-button size="small" type="primary">选择文件</el-button>
	        <div slot="tip" class="el-upload__tip" style="color: blue">商品主图第1张图片，将出现在商 品列表页、商品详情页第一张图等</div>
          </el-upload>
          </el-form-item>
	   
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="dialogVisible = false">保存</el-button>
      </span>
    </el-dialog>
  </div>
</template>


<script>
import { searchUnionInfo, deletePro, changeStatus } from "@/api/mvoHandler";

export default {
  data() {
    return {
      dialogVisible: false,
      form:{},
      tableData: [],
      tagMap: new Map(), // 状态对应标签
      selectedItem: [], //被选中的数据
      selectedId: [], //批量删除id
      currentPage: 1,
      total: 0,
      pageSize: 10,
      filters: {}
    };
  },
  created(){
    this.tagMap = this.initTagMap()
    this.curUser = JSON.parse(window.sessionStorage.getItem("USER_AUTH"));
    // console.log("+++++++++++++++++"+this.curUser.username)
    searchUnionInfo(this.curUser.username).then(res => {
      let proList = res.data;
      this.total = res.data.length;
      for (let i =0; i< proList.length; i++) {
        let item = proList[i].pro
        if(proList[i].prc.length != 0){
          let cateNames = ""
          for(let m of proList[i].prc){
            cateNames += m.category_name+" "
          }
          item['cetegoryNames'] = cateNames
        }
        if(proList[i].img.length != 0){
          
          item['uri'] = proList[i].img[0].uri
        }
        this.tableData.push(item)
      }
    });
  },
  methods: {
    handleSelectionChange(val) {
      // console.log(val)
      this.selectedItem = val;
    },

    handleCurrentChange(val) {
      this.currentPage = val;
    },
    handleSizeChange(val) {
      this.pageSize = val;
    },
    initTagMap(){
      let tagMap = new Map()
      tagMap.set('A', ['success', '已上架'])
      tagMap.set('B', ['primary', '未上架'])
      return tagMap
    },
    getTag(sts_cd){ // 获取状态对应标签
      return this.tagMap.get(sts_cd)
    },
    // 表头标题换行
    renderheader(h, { column, $index }) {
      return h("span", {}, [
        h("span", {}, column.label.split("/")[0]),
        h("br"),
        h("span", {}, column.label.split("/")[1])
      ]);
    },
    toggleSelection(rows) {
      if (rows) {
        rows.forEach(row => {
          this.$refs.multipleTable.toggleRowSelection(row);
        });
      } else {
        this.$refs.multipleTable.clearSelection();
      }
    },
    handleSelectionChange(val) {
      this.multipleSelection = val;
    },
    handleEdit(index, row) {
      console.log(index, row);
    },
    handleOn(index, row) {
      let m = {pro_id: parseInt(row.pro_id), status: 'A'}
      changeStatus(m).then(res => {
        console.log(res)
      })
    }
  }
};
</script>

<style>
#divider {
  margin: 0px;
}
.subtitle{
  margin-left: 20px;
}
</style>

