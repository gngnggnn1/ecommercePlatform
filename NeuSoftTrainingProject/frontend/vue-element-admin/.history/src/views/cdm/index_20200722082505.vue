<template>
  <section>
    <!--查询参数-->
    <el-row>
      <!--查询-->
      <el-col :span="12" class="toolbar" style="padding-bottom: 0;">
        <el-form :inline="true" :model="filters">
          <el-form-item>
            <el-input v-model="filters.code_type" placeholder="请输入字典类型......"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" v-on:click="searchCdmByCt()">查询</el-button>
          </el-form-item>
        </el-form>
      </el-col>
      <!--新增-->
      <el-col :span="12" class="toolbar" style="padding-bottom: 0;">
        <el-button type="primary" icon="el-icon-import" @click="titleType='新增字典', dialogFormImport = true">新增字典</el-button>
        <!--对话框-->
        <el-dialog :title="titleType" :visible.sync="dialogFormImport">
          <el-form :model="cdmForm" ref="cdmForm">
            <el-form-item prop="code_type" label="字典类型" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.code_type" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="description" label="用途描述" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.description" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="type_cd" label="编码" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.type_cd" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="code_val" label="编码值" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.code_val" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="seq_no" label="排序" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.seq_no" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="created_by" label="创建人" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.created_by" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="creation_date" label="创建时间" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.creation_date" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="last_update_by" label="修改人" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.last_update_by" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="last_update_date" label="修改时间" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.last_update_date" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="call_cnt" label="乐观锁" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.call_cnt" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="remark" label="备注" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.remark" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="sts_cd" label="状态" :label-width="formLabelWidth">
              <el-input v-model="cdmForm.sts_cd" autocomplete="off"></el-input>
            </el-form-item>
          </el-form>

          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="titleType=='新增字典'?insertCdm():updateCdm()">确 定</el-button>
            <el-button @click="dialogFormImport = false, cleancdmForm()">取 消</el-button>
          </div>
        </el-dialog>
      </el-col>
    </el-row>


    <!--列表-->
    <template>
      <el-table
        ref="multipleTable"
        max-height="500"
        :data="cdmItemList.slice((currentPage-1)*pageSize,currentPage*pageSize)"
        highlight-current-row
        v-loading="loading"
        tooltip-effect="dark"
        style="width: 100%;"
        @selection-change="handleSelectionChange"
        :model="filters">

        <el-table-column type="selection" width="55"></el-table-column>

        <el-table-column prop="code_type" label="字典类型" width="200"></el-table-column>

        <el-table-column prop="description" label="用途描述" width="300"></el-table-column>

        <el-table-column prop="type_cd" label="编码" width="150"></el-table-column>

        <el-table-column prop="code_val" label="编码值" width="250"></el-table-column>

        <el-table-column label="操作" width="200">
          <template scope="scope">
            <el-button type="primary" size="small" @click="loadUpdate(scope.$index, scope.row)">修改</el-button>
            <el-button type="danger" size="small" @click="delCdm(scope.$index, scope.row)">删除</el-button>
          </template>
        </el-table-column>

      </el-table>

      <!--      <el-pagination-->
      <!--        background-->
      <!--        layout="prev, pager, next"-->
      <!--        :total="1000">-->
      <!--      </el-pagination>-->
      <!--批量删除 && 页面分割-->
      <div class="block">
        <el-row :gutter="100">
          <!--批量删除-->
          <el-col :span="8" class="toolbar" style="padding-bottom: 0;">
            <el-form :inline="true" :model="filters">
              <el-form-item>
                <el-button type="danger" icon="el-icon-import" v-on:click="batchDelCdm(selectedItem)">批量删除</el-button>
              </el-form-item>
            </el-form>
          </el-col>
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
        </el-row>
      </div>

    </template>


  </section>
</template>

<script>
  export default {
    name: "",
    data(){
      return{
        filters: {
          code_type : ""
        },
        loading : false,
        dialogFormImport : false,
        cdmForm : {
          cdm_id : "",
          code_type : "",
          description : "",
          type_cd : "",
          code_val : "",
          seq_no : "",
          created_by : "",
          creation_date : "",
          last_update_by : "",
          last_update_date : "",
          call_cnt : "",
          remark : "",
          sts_cd : ""
        },
        cdmItemList : [],
        selectedItem : [],//被选中的数据
        selectedId : [],//批量删除id
        currentPage : 1,
        total : 1000,
        pageSize : 10,
        formLabelWidth: '120px',
        titleType: "新增字典"


      }
    },
    created() {
      this.getCdms();
    },

    methods: {
      handleSelectionChange(val) {
        // console.log(val)
        this.selectedItem = val;
      },

      handleCurrentChange(val) {
        this.currentPage = val;
      },
      handleSizeChange(val){
        this.pageSize = val;
      },
      cleancdmForm(){
        /**
         * 清理缓存cdmForm
         * @type {{param_cd: string, param_value: string, call_cnt: string, par_id: string, last_update_by: string, operationFlag: string, description: string, remark: string, creation_date: string, sts_cd: string, created_by: string, last_update_date: string}}
         */
        this.cdmForm = {
          cdm_id : "",
          code_type : "",
          description : "",
          type_cd : "",
          code_val : "",
          seq_no : "",
          created_by : "",
          creation_date : "",
          last_update_by : "",
          last_update_date : "",
          call_cnt : "",
          remark : "",
          sts_cd : ""
        }
      },

      getCdms(){
        this.$store.dispatch('GetCdms').then((result) => {
          this.cdmItemList = result.data
          this.total = this.cdmItemList.length;
          // console.log(this.cdmItemList);
        })
      },
      insertCdm(){
        this.$refs.cdmForm.validate(valid => {
          if (valid){
            this.$store.dispatch('InsertCdm',this.cdmForm).then((result) => {
              if (result.code == 200){
                this.dialogFormImport = false;
                this.$message({
                  message: "已成功添加字典信息！",
                  type: "success"
                });
              }else {
                this.$message({
                  message: "添加字典信息失败！",
                  type: "warning"
                });
              }
              this.getCdms();
            })
          }else {
            return false
          }
        })
        /**
         * 清理缓存cdmForm
         */
        this.cleancdmForm()
      },
      loadUpdate(index, rowData){
        this.cdmForm = Object.assign({}, rowData)
        this.dialogFormImport = true
        this.titleType = "修改字典"
      },
      updateCdm(){
        this.$refs.cdmForm.validate(valid => {
          if (valid){
            this.$store.dispatch('UpdateCdm',this.cdmForm).then((result) =>{
              if (result.code == 200){
                this.dialogFormImport = false;
                this.$message({
                  message: "已成功修改参数信息！",
                  type: "success"
                });
              }else {
                this.$message({
                  message: "修改参数信息失败！",
                  type: "warning"
                });
              }
              this.getCdms();
            })
          }else {
            return false;
          }
        })
        /**
         * 清理缓存cdmForm
         */
        this.cleancdmForm()
      },

      searchCdmByCt(){
        this.$store.dispatch('SearchCdm',this.filters.code_type).then((result) =>{
          this.cdmItemList = result.data
          if (result.code == 200 && result.message == 'success'){
            this.$message({
              message : "查询成功!",
              type : "success"
            });
          }else {
            this.$message({
              message : "查询失败!",
              type : "warning"
            });
          }

        })
      },

      delCdm(index, rowData){
        this.$confirm('Are you sure to delete the code dictionary?', 'Code Dictionary Delete', {
          confirmButtonText: 'Confirm',
          cancelButtonText: 'Cancel',
          type: 'warning'
        }).then(() => {
          this.$store.dispatch('DeleteCdm',rowData.cdm_id).then((result) => {
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
            this.getCdms()
          })
        }).catch(() => {
        });
      },

      batchDelCdm(rows){
        this.$confirm('Are you sure to delete the code dictionaries?', 'Patch Delete', {
          confirmButtonText: 'Confirm',
          cancelButtonText: 'Cancel',
          type: 'warning'
        }).then(() =>{
          rows.forEach(rowElement => {
            this.$store.dispatch('DeleteCdm',rowElement.cdm_id).then((result) => {
              if (result.code == 201 || result.message == 'failed'){
                this.$message({
                  type: 'info',
                  message: `删除失败!`
                })
                return false;
              }
            })
          })
        }).then(() => {
          this.$message({
            type: 'success',
            message: `批量删除成功!`
          })
          this.getCdms()
        }).catch(() => {
          this.$message({
            type: 'info',
            message: `取消批量删除!`
          })
          this.getCdms()
        })
      }



    }
  }
</script>

<style scoped>

</style>
