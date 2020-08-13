<template>
  <div class="pageContent">
    <!-- <img src="@/views/mvo/pj.jpg" class="head_pic"> -->
    <div class="pageHeader" style="padding: 15px">
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal ;margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />公司信息
        </small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>

    <div class="subtitle">
    <h3 style="line-height:40px;">公司信息</h3>
    </div>

    <el-table ref="table" :data="manTableData" tooltip-effect="dark" style="width: 100%">
      <el-table-column
        prop="name_cn"
        label="Company Name/公司名称(中文)"
        width="200px"
        align="center"
        :render-header="renderheader"
      ></el-table-column>
      <el-table-column
        prop="name_en"
        label="Company Name/公司名称(英文)"
        width="200px"
        align="center"
        :render-header="renderheader"
      ></el-table-column>
      <el-table-column
        prop="gmc_report_type"
        label="GMC Report Type/品牌商认证类型"
        align="center"
        :render-header="renderheader"
        show-overflow-tooltip
      ></el-table-column>
      <el-table-column
        prop="gmc_report_url"
        label="GMC Report Url/证书地址"
        :render-header="renderheader"
        align="center"
        show-overflow-tooltip
      ></el-table-column>
      <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button type="primary" size="mini" @click="handleEditMan(scope.$index, scope.row)">编辑</el-button>
        </template>
      </el-table-column>
    </el-table>

    <div class="subtitle">
    <h3 style="line-height:40px;">品牌信息</h3>
    </div>
    <el-table
      ref="multipleTable"
      max-height="500"
      :data="brandTableData.slice((currentPage-1)*pageSize,currentPage*pageSize)"
      v-loading="loading"
      tooltip-effect="dark"
      style="width: 100%; margin-bottom: 20px"
      @selection-change="handleSelectionChange"
    >
      <el-table-column prop="name_en" label="品牌名称(英文)/English Brand Name" width="200px" align="center" :render-header="renderheader"> </el-table-column>
      <el-table-column prop="name_cn" label="品牌名称(中文)/Chinese Brand Name" width="200px" align="center" :render-header="renderheader"> </el-table-column>
      <el-table-column prop="uri" label="品牌图片/Brand Logo" width="200px" align="center" :render-header="renderheader">
      <template slot-scope="scope">
        <img :src="scope.row.uri" width="40" height="40"/>
      </template>
      </el-table-column>
      <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button size="mini" type="primary" @click="loadBrand(scope.$index, scope.row)">编辑</el-button>
          <el-button size="mini" type="danger" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <div>
      <el-button type="primary" @click="brandDialogVisible = true,titleType='新增品牌'" style="float: right; margin-right: 20px">新增</el-button>

      <el-col :span="8">
        <!--页面分割-->
        <el-pagination class="fy"
                       background
                       @current-change="handleCurrentChange"
                       @size-change="handleSizeChange"
                       :pager-count="5"
                       :page-sizes="[5, 10, 15, 20]"
                       :page-size="pageSize"
                       layout="prev, pager, next, sizes, total, jumper"
                       :total="total">
        </el-pagination>
      </el-col>
    </div>

    <!--品牌信息对话框-->
    <el-dialog :title="titleType" :visible.sync="brandDialogVisible" width="50%">
      <el-form ref="brandTable" :model="brandTable" label-width="80px">
        <el-form-item label="品牌名称(英文)">
          <el-input v-model="brandTable.name_en"></el-input>
        </el-form-item>
        <el-form-item label="品牌名称(中文)">
          <el-input v-model="brandTable.name_cn"></el-input>
        </el-form-item>
        <el-form-item label="上传图片">
          <el-upload class="upload-img"
                     ref="upload"
                     action="http://localhost:8088/brdProductManagementController/uploadImg"
                     drag
                     name="file"
                     :limit="1"
                     accept="image/png,image/gif,image/jpg,image/jpeg"
                     :auto-upload="false"
                     :multiple="false"
                     :file-list="imgList"
                     :on-change="handleImgChange"
                     :on-success="handleSuccess"
                     :on-error="handleError"
                     :before-upload="handleBeforeUpload">
            <div class="el-upload__text">将文件拖到此处上传</div>
            <div><el-button size="small" type="primary">选择文件</el-button></div>
            <div slot="tip" class="el-upload__tip">不超过500kb</div>
          </el-upload>
        </el-form-item>

      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="brandDialogVisible = false, cleanBrandTable()">取 消</el-button>
        <el-button type="primary" @click="titleType=='新增品牌'?addBrand():modifyBrand()">确定</el-button>
      </span>
    </el-dialog>

  </div>
</template>


<script>


  export default {

  data() {
    return {
      // qiniuUploadUrl: "https://upload-z1.qiniup.com",
      qiniuUploadUrl: "http://localhost:8088/brdProductManagementController/uploadImg",
      qiniuData: {
        uploadToken: "",
        key: ""
      },
      filter:{

      },
      brandDialogVisible: false,
      manDialogVisible: false,
      loading : false,
      form: {
        name: "",
        number: ""
      },
      manTable: {
        man_id: "",
        name_en: "",
        name_cn: "",
        gmc_report_type: "",
        gmc_report_url: "",
        description: "",
        created_by: "",
        creation_date: "",
        last_update_by: "",
        last_update_date: "",
        call_cnt: "",
        remark: "",
        sts_cd: ""
      },
      brandTable: {
        brd_id: "",
        man_id: "",
        name_en: "",
        name_cn: "",
        created_by: "",
        creation_date: "",
        last_update_by: "",
        last_update_date: "",
        call_cnt: "",
        remark: "",
        sts_cd: "",
        uri:""
      },
      imgTable: {
        img_id: "",
        name: "",
        width: "",
        height: "",
        uri: "",
        type_cd: "",
        entity_id: "",
        entity_cd: "",
        seq_no: "",
        created_by: "",
        creation_date: "",
        last_update_by: "",
        last_update_date: "",
        call_cnt: "",
        remark: "",
        sts_cd: ""
      },
      imgForm:{
        name:"",
        uri:""
      },
      imgList: [],
      manTableData: [],
      brandTableData:[],
      selectedItem : [],//被选中的数据
      selectedId : [],//批量删除id
      currentPage : 1,
      total : 1000,
      pageSize : 10,
      titleType: "新增品牌"

    };
  },

  created() {
    this.getMan();
    //异步处理
    setTimeout(()=>{
      if (this.manTableData == 0){
        this.$router.push("mvo-myInfo-edit")
      }
    },200);

  },

  methods: {
    //获取公司
    getMan(){
      this.$store.dispatch('GetMan',JSON.parse(window.sessionStorage.getItem("USER_AUTH")).username).then((result) => {
        this.manTableData.push(result.data);
        this.brandTable.man_id = this.manTableData[0].man_id

        this.getBrands(this.manTableData[0].man_id);
      })

    },
    //获取品牌商信息
    getBrands(man_id){
      this.$store.dispatch('GetBrands',man_id).then((result) => {
        // this.brandTableData = result.data.brd
        this.brandTableData = [];
        for (let i = 0;i<result.data.img.length;i++){
          let obj = result.data.brd[i];
          if (result.data.img[i] != null){
            obj['uri'] = result.data.img[i].uri;
          }else {
            obj['uri'] = "http://localhost:8088/static/upload/no.jpg";
          }
          this.brandTableData.push(obj);
        }

        // this.imgTableData = result.data.img
        this.total = this.brandTableData.length
      })
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
    handleCurrentChange(val) {
      this.currentPage = val;
    },
    handleSizeChange(val){
      this.pageSize = val;
    },
    handleEditMan(index, row) {
      // console.log(index, row);
    },
    handleDelete(index, rowData) {
      this.$confirm('Are you sure to delete the brand?', 'Brand Delete', {
        confirmButtonText: 'Confirm',
        cancelButtonText: 'Cancel',
        type: 'warning'
      }).then(() => {
        this.$store.dispatch('DeleteBrd', rowData.brd_id).then((result) => {
          if (result.code == 200 && result.message == 'success'){
            this.$message({
              type: 'success',
              message: `删除成功!`
            })
          }else{
            this.$message({
              type: 'info',
              message: `删除失败!`
            })
          }
          this.getBrands(this.manTableData[0].man_id);
        })
      }).catch(() => {
      });


    },
    //清空brandTable
    cleanBrandTable(){
      this.brandTable = {
        brd_id: "",
        man_id: this.manTableData[0].man_id,
        name_en: "",
        name_cn: "",
        created_by: "",
        creation_date: "",
        last_update_by: "",
        last_update_date: "",
        call_cnt: "",
        remark: "",
        sts_cd: ""
      }
      this.imgList = [];
    },
    addBrand(){
      this.handleupLoadImg();
      setTimeout(() => {
        this.$refs.brandTable.validate(valid => {
          if (valid){
            let data = {};
            data["brdBrand"] = this.brandTable;
            data["imgImage"] = this.brandTable;
            this.$store.dispatch('InsertBrand',data).then((result) => {
              if (result.code == 200){
                this.brandDialogVisible = false;
                this.$message({
                  message: "已成功添加品牌信息！",
                  type: "success"
                });
              }else {
                this.$message({
                  message: "添加品牌信息失败！",
                  type: "warning"
                });
              }
              this.getBrands(this.manTableData[0].man_id);
            })
          }else {
            return false
          }
        })
        /**
         * 清理缓存brandTable
         */
        this.cleanBrandTable()

      },500)

    },
    loadBrand(index, rowData){
      this.brandTable = Object.assign({}, rowData)
      console.log(this.brandTable)
      this.titleType='修改品牌'
      this.brandDialogVisible = true
    },
    modifyBrand(){
      this.handleupLoadImg();
      setTimeout(()=>{
        this.$refs.brandTable.validate(valid => {
          let data = {};
          data["brdBrand"] = this.brandTable;
          data["imgImage"] = this.brandTable;
          console.log(data)
          if (valid){
            this.$store.dispatch('UpdateBrand',data).then((result) => {
              if (result.code == 200){
                this.brandDialogVisible = false;
                this.$message({
                  message: "已成功修改品牌信息！",
                  type: "success"
                });
              }else {
                this.$message({
                  message: "修改品牌信息失败！",
                  type: "warning"
                });
              }
              this.getBrands(this.manTableData[0].man_id);
            })
          }else {
            return false
          }
        })
        /**
         * 清理缓存brandTable
         */
        this.cleanBrandTable()
      },500)

    },
    handleImgChange(file,fileList){
      this.imgList = fileList
      this.imgForm.name = file.name
    },
    handleupLoadImg(){
      event.preventDefault()
      this.$refs.upload.submit()

    },
    handleSuccess(res, file) {

      this.brandTable.uri = "http://localhost:8088/static/upload/"+res
      this.loading = false

    },
    handleBeforeUpload(file){
      this.qiniuData.key = file.name;
      const isJPG = file.type === "image/jpeg";
      const isPNG = file.type === "image/png";
      const isLt2M = file.size / 1024 / 1024 < 2;
      if (!isJPG && !isPNG) {
        this.$message.error("图片只能是 JPG/PNG 格式!");
        return false;
      }
      if (!isLt2M) {
        this.$message.error("图片大小不能超过 2MB!");
        return false;
      }
    },
    handleError(){
      this.$message({
        message: "上传失败",
        duration: 2000,
        type: "warning"
      });
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

