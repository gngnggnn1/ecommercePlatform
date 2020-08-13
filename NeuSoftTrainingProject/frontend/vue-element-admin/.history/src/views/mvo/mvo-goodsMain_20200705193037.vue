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
        <el-input style="width:200px" v-model="searchCommodityName"></el-input>
      </span>
      <el-button type="primary" style="margin-left: 10px">
        search
        <font-awesome-icon :icon="['fas','search']" size="2px" />
      </el-button>
      <el-button type="primary" style="margin-left: 10px" @click="dialogVisible = true">
        新增
      </el-button>
    </div>

    <el-table ref="table" :data="tableData" tooltip-effect="dark" style="width: 100%">
      <el-table-column
        prop="commodityName"
        label="商品标题"
        width="200px"
        align="center"
        :render-header="renderheader"
      ></el-table-column>
      <el-table-column
        prop="class_"
        label="分类"
        width="200px"
        align="center"
        :render-header="renderheader"
      ></el-table-column>
      <el-table-column
        prop="view"
        label="主图"
        align="center"
        :render-header="renderheader"
        show-overflow-tooltip
      ></el-table-column>
      <el-table-column
        prop="state"
        label="状态"
        :render-header="renderheader"
        align="center"
        show-overflow-tooltip
      ></el-table-column>
      <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button type="primary" size="mini" @click="dialogVisible = true">编辑</el-button>
          <el-button type="danger" size="mini" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

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
        <el-upload class="upload-img" ref="upload" action="https://jsonplaceholder.typicode.com/posts/" :on-change="uploadChange" :before-upload="beforeupload"
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
export default {
  data() {
    return {
      dialogVisible: false,

      form:{},
     
      tableData: [
        {
          commodityName: "麻将",
          class_: "eng",
          view: "1",
          state: ""
        }
      ]
    
    };
  },

  methods: {
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
    handleDelete(index, row) {
      console.log(index, row);
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

