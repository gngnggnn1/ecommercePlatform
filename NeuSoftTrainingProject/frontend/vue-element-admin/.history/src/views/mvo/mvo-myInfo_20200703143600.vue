<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />公司信息
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <h3 style="line-height:40px;">公司信息</h3>

    <el-table ref="table" :data="tableData" tooltip-effect="dark" style="width: 100%">
      <el-table-column
        prop="companyNameZh"
        label="Company Name/公司名称(中文)"
        width="200px"
        align="center"
        :render-header="renderheader"
      ></el-table-column>
      <el-table-column
        prop="companyNameEn"
        label="Company Name/公司名称(英文)"
        width="200px"
        align="center"
        :render-header="renderheader"
      ></el-table-column>
      <el-table-column
        prop="gmcType"
        label="GMC Report Type/品牌商认证类型"
        align="center"
        :render-header="renderheader"
        show-overflow-tooltip
      ></el-table-column>
      <el-table-column
        prop="gmcUrl"
        label="GMC Report Url/证书地址"
        :render-header="renderheader"
        align="center"
        show-overflow-tooltip
      ></el-table-column>
      <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button size="mini" @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          <el-button size="mini" type="danger" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <h3 style="line-height:40px;">品牌信息</h3>
    <el-table
      ref="brandTable"
      :data="brandTableData"
      tooltip-effect="dark"
      style="width: 100%;"
      @selection-change="handleSelectionChange"
    >
      <el-table-column prop="brandName" label="品牌名称/Brand Name" width="200px" align="center" :render-header="renderheader"> </el-table-column>
      <el-table-column prop="brandLogo" label="品牌图片/Brand Logo" width="200px" align="center" :render-header="renderheader">
      <!-- <template slot-scope="scope">
        <img :src="scope.row.brandLogo" width="40" height="40" class="head_pic"/>
      </template> -->
      </el-table-column>
      <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button size="mini" @click="handleEdit2(scope.$index, scope.row)">编辑</el-button>
          <el-button size="mini" type="danger" @click="handleDelete2(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-button type="button" @click="dialogVisible = true">新增</el-button>

    <el-dialog title="品牌信息" :visible.sync="dialogVisible" width="30%">
      <el-form ref="form" :model="form" label-width="80px">
        <el-form-item label="品牌名称">
          <el-input v-model="form.dic_type"></el-input>
        </el-form-item>
        <el-form-item label="品牌图片">
          <el-input v-model="form.use_dsc"></el-input>
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
      form: {
        name: "",
        number: ""
      },
      tableData: [
        {
          companyNameZh: "中",
          companyNameEn: "eng",
          gmcType: "1",
          gmcUrl: "1111.cn"
        }
      ],
      brandTableData:[
        {
          brandName:"11",
          brangLogo:"photo.png"
        }
      ]
    
    };
  },

  methods: {
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
</style>

