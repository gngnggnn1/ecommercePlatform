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
        <el-input style="width:200px"></el-input>
      </span>
      <el-button type="primary" style="margin-left: 10px">
        search
        <font-awesome-icon :icon="['fas','search']" size="2px" />
      </el-button>
      <el-button type="primary" style="margin-left: 10px" @click="dialogVisible = true">新增</el-button>
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
            <el-popover placement="right" title trigger="hover">
              <img :src="scope.row.uri" />
              <img
                slot="reference"
                :src="scope.row.uri"
                :alt="scope.row.image_url"
                style="max-height: 50px;max-width: 130px"
              />
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
              disable-transitions
            >{{getTag(scope.row.sts_cd)[1]}}</el-tag>
          </template>
        </el-table-column>
        <el-table-column label="操作" align="center">
          <template slot-scope="scope">
            <el-button type="primary" size="mini" @click="handleEdit">编辑</el-button>
            <el-button
              type="success"
              size="mini"
              @click="handleOn(scope.$index, scope.row)"
              :disabled="getTag(scope.row.sts_cd)[1]=='已上架'?true:false"
            >上架</el-button>
            <el-button
              type="danger"
              size="mini"
              @click="handleOff(scope.$index, scope.row)"
              :disabled="getTag(scope.row.sts_cd)[1]=='未上架'?true:false"
            >下架</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="block">
        <el-row :gutter="100">
          <!--批量上架-->
          <el-col :span="8" class="toolbar" style="padding-bottom: 0;">
            <el-button type="primary" icon="el-icon-import" v-on:click="batchOn(selectedItem)">批量上架</el-button>
            <el-button type="primary" icon="el-icon-import" v-on:click="batchOff(selectedItem)">批量下架</el-button>
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
          <el-input  v-model="form.title" placeholder="商品标题" style="width: 100px;">
          </el-input>
        </el-form-item>
        <div style="color: orange; margin-left: 11px">请先选择GMC借卖平台商品大类，此分类决定了您的商品在借卖平台中展示的位置</div>
        <el-form-item label="商品分类">
          <template>
            <el-select v-model="form.category_name" placeholder="请选择">
              <el-option
                v-for="item in options"
                :key="item.prc_id"
                :label="item.category_name"
                :value="item.category_name"
              >
              </el-option>
            </el-select>
          </template>
        </el-form-item>
        <div
          style="color: orange; margin-left: 11px; margin-bottom: 11px"
        >图片要求： 最多可以上传12张图：eBay 12张、Amazon 9张； 分辨率1000像素（高度）X 1000像素（宽度）以上； 正方形，为无水印白底图或情景图，商品占图片80%； 可以是多角度拍摄商品图片，也可以是细节图。</div>
        <el-form-item label="上传图片" v-model="form.uri">
          <el-upload
        class="upload-demo"
        ref="upload"
        action="http://localhost:8088/brdProductManagementController/uploadImg"
        accept=".jpg,.png"
        name="file"
        multiple
        :on-success="handleSuccessUpload"
        :on-error="handleErrorUpload"
        :auto-upload="false">
        <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
        <el-button slot="trigger" style="magin-top: 20px;" size="small" type="primary">选取图片</el-button>
      </el-upload>
      <el-button style="magin-left: 20px;" size="small" type="primary" @click="handleUploadImg">上传图片</el-button>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="handleSubmit">保存</el-button>
      </span>
    </el-dialog>
  </div>
</template>


<script>
import { searchUnionInfo, deletePro, changeStatus, getAllOptions } from "@/api/mvoHandler";

export default {
  data() {
    return {
      dialogVisible: false,
      form: {},
      tableData: [],
      tagMap: new Map(), // 状态对应标签
      selectedItem: [], //被选中的数据
      selectedId: [], //批量操作id
      currentPage: 1,
      total: 0,
      pageSize: 10,
      filters: {},
      headers:{
        'x-auth-token': sessionStorage.getItem('UER_AUTH')
      },
      options:[]
    };
  },
  created() {
    this.tagMap = this.initTagMap();
    this.curUser = JSON.parse(window.sessionStorage.getItem("USER_AUTH"));
    // console.log("+++++++++++++++++"+this.curUser.username)
    searchUnionInfo(this.curUser.username).then(res => {
      let proList = res.data;
      this.total = res.data.length;
      for (let i = 0; i < proList.length; i++) {
        let item = proList[i].pro;
        if (proList[i].prc.length != 0) {
          let cateNames = "";
          for (let m of proList[i].prc) {
            cateNames += m.category_name + " ";
          }
          item["cetegoryNames"] = cateNames;
        }
        if (proList[i].img.length != 0) {
          item["uri"] = proList[i].img[0].uri;
        }
        this.tableData.push(item);
      }
    });
  },
  methods: {
    handleSelectionChange(val) {
      // console.log(val)
      this.selectedItem = val;
    },
    handleSubmit(){
      this.dialogVisible = false;
    },
    handleCurrentChange(val) {
      this.currentPage = val;
    },
    handleSizeChange(val) {
      this.pageSize = val;
    },
    initTagMap() {
      let tagMap = new Map();
      tagMap.set("A", ["success", "已上架"]);
      tagMap.set("I", ["primary", "未上架"]);
      return tagMap;
    },
    getTag(sts_cd) {
      // 获取状态对应标签
      return this.tagMap.get(sts_cd);
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
    handleEdit(index, row) {
      this.dialogVisible = true;
      getAllOptions().then(res => {
        this.options = res.data
      })

    },
    handleUploadImg(){
      event.preventDefault()
      this.$refs.upload.submit()
    },
    handleSuccessUpload(res, file){
      this.form.uri = "http:localhost:8088" + res
      alert("上传成功")
    },
    handleErrorUpload(){
      alert("图片上传失败")
    },
    handleOn(index, row) {
      let m = { pro_id: row.pro_id, sts_cd: "A" };
      changeStatus(m).then(res => {
        if (res.code == 200) {
          alert("商品状态更新成功");
        } else {
          alert("状态相同，未更新");
        }
      });
    },
    handleOff(index, row) {
      let m = { pro_id: row.pro_id, sts_cd: "I" };
      changeStatus(m).then(res => {
        if (res.code == 200) {
          alert("商品状态更新成功");
        } else {
          alert("状态相同，未更新");
        }
      });
    },
    batchOn(rows) {
      console.log(rows);
      this.$confirm("确认操作?", "批量上架", {
        confirmButtonText: "Confirm",
        cancelButtonText: "Cancel",
        type: "warning"
      })
        .then(() => {
          rows.forEach(rowElement => {
            let m = { pro_id: rowElement.pro_id, sts_cd: "A" };
            changeStatus(m).then(res => {
              console.log(res);
            });
          });
        })
        .then(() => {
          this.$message({
            type: "success",
            message: `批量上架成功!`
          });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: `取消批量上架!`
          });
        });
    },
    batchOff(rows) {
      console.log(rows);
      this.$confirm("确认操作?", "批量下架", {
        confirmButtonText: "Confirm",
        cancelButtonText: "Cancel",
        type: "warning"
      })
        .then(() => {
          rows.forEach(rowElement => {
            let m = { pro_id: rowElement.pro_id, sts_cd: "I" };
            changeStatus(m).then(res => {
              console.log(res);
            });
          });
        })
        .then(() => {
          this.$message({
            type: "success",
            message: `批量下架成功!`
          });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: `取消批量下架!`
          });
        });
    }
  }
};
</script>

<style>
#divider {
  margin: 0px;
}
.subtitle {
  margin-left: 20px;
}
</style>

