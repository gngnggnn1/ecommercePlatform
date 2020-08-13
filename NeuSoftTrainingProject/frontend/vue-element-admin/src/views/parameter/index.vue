<template>
  <section>
    <!--查询参数-->
    <el-row>
      <!--查询-->
      <el-col :span="12" class="toolbar" style="padding-bottom: 0;">
        <el-form :inline="true" :model="filters">
          <el-form-item>
            <el-input v-model="filters.param_cd" placeholder="请输入参数主键......"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" icon="el-icon-search" v-on:click="searchParByCd()">查询</el-button>
          </el-form-item>
        </el-form>
      </el-col>
      <!--新增-->
      <el-col :span="12" class="toolbar" style="padding-bottom: 0;">
        <el-button type="primary" icon="el-icon-import" @click="titleType='新增参数', dialogFormImport = true">新增参数</el-button>
        <!--对话框-->
        <el-dialog :title="titleType" :visible.sync="dialogFormImport">
          <el-form :model="parForm" ref="parForm">
            <el-form-item prop="param_cd" label="参数主键" :label-width="formLabelWidth">
              <el-input v-model="parForm.param_cd" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="param_value" label="参数值" :label-width="formLabelWidth">
              <el-input v-model="parForm.param_value" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="description" label="参数说明" :label-width="formLabelWidth">
              <el-input v-model="parForm.description" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="created_by" label="创建人" :label-width="formLabelWidth">
              <el-input v-model="parForm.created_by" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="creation_date" label="创建时间" :label-width="formLabelWidth">
              <el-input v-model="parForm.creation_date" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="last_update_by" label="修改人" :label-width="formLabelWidth">
              <el-input v-model="parForm.last_update_by" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="last_update_date" label="修改时间" :label-width="formLabelWidth">
              <el-input v-model="parForm.last_update_date" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="call_cnt" label="乐观锁" :label-width="formLabelWidth">
              <el-input v-model="parForm.call_cnt" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="remark" label="备注" :label-width="formLabelWidth">
              <el-input v-model="parForm.remark" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item prop="sts_cd" label="状态" :label-width="formLabelWidth">
              <el-input v-model="parForm.sts_cd" autocomplete="off"></el-input>
            </el-form-item>
          </el-form>

          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="titleType=='新增参数'?insertPar():updatePar()">确 定</el-button>
            <el-button @click="dialogFormImport = false, cleanParForm()">取 消</el-button>
          </div>
        </el-dialog>
      </el-col>
    </el-row>


    <!--列表-->
    <template>
      <el-table
        ref="multipleTable"
        max-height="500"
        :data="parItemList.slice((currentPage-1)*pageSize,currentPage*pageSize)"
        highlight-current-row
        v-loading="loading"
        tooltip-effect="dark"
        style="width: 100%;"
        @selection-change="handleSelectionChange"
        :model="filters">

        <el-table-column type="selection" width="55"></el-table-column>

        <el-table-column prop="param_cd" label="参数主键" width="200"></el-table-column>

        <el-table-column prop="param_value" label="参数值" width="300"></el-table-column>

        <el-table-column prop="description" label="参数说明" width="400"></el-table-column>

        <el-table-column label="操作" width="200">
          <template scope="scope">
            <el-button type="primary" size="small" @click="loadUpdate(scope.$index, scope.row)">修改</el-button>
            <el-button type="danger" size="small" @click="delPar(scope.$index, scope.row)">删除</el-button>
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
                <el-button type="danger" icon="el-icon-import" v-on:click="batchDelPar(selectedItem)">批量删除</el-button>
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
              param_cd: ""
            },
            loading : false,
            dialogFormImport : false,
            parForm : {
              par_id : "",
              param_cd : "",
              param_value : "",
              description : "",
              created_by : "",
              creation_date : "",
              last_update_by : "",
              last_update_date : "",
              call_cnt : "",
              remark : "",
              sts_cd : "",
              operationFlag: "add"
            },
            parItemList : [],
            selectedItem : [],//被选中的数据
            selectedId : [],//批量删除id
            currentPage : 1,
            total : 1000,
            pageSize : 10,
            formLabelWidth: '120px',
            titleType: "新增参数"


          }
        },
      created() {
          this.getPars();
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
          cleanParForm(){
            /**
             * 清理缓存parForm
             * @type {{param_cd: string, param_value: string, call_cnt: string, par_id: string, last_update_by: string, operationFlag: string, description: string, remark: string, creation_date: string, sts_cd: string, created_by: string, last_update_date: string}}
             */
            this.parForm = {
              par_id : "",
              param_cd : "",
              param_value : "",
              description : "",
              created_by : "",
              creation_date : "",
              last_update_by : "",
              last_update_date : "",
              call_cnt : "",
              remark : "",
              sts_cd : "",
              operationFlag: "add"
            }
          },

          getPars(){
            this.$store.dispatch('GetPars').then((result) => {
              this.parItemList = result.data
              this.total = this.parItemList.length;
              // console.log(this.parItemList);
            })
          },
          insertPar(){
            this.$refs.parForm.validate(valid => {
              if (valid){
                this.$store.dispatch('InsertPar',this.parForm).then((result) => {
                  if (result.code == 200){
                    this.dialogFormImport = false;
                    this.$message({
                      message: "已成功添加参数信息！",
                      type: "success"
                    });
                  }else {
                    this.$message({
                      message: "添加参数信息失败！",
                      type: "warning"
                    });
                  }
                this.getPars();
                })
              }else {
               return false
              }
            })
            /**
             * 清理缓存parForm
             */
            this.cleanParForm()
          },
          loadUpdate(index, rowData){
            this.parForm = Object.assign({}, rowData)
            this.dialogFormImport = true
            this.titleType = "修改参数"
          },
          updatePar(){
            this.$refs.parForm.validate(valid => {
              if (valid){
                this.$store.dispatch('UpdatePar',this.parForm).then((result) =>{
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
                  this.getPars();
                })
              }else {
                return false;
              }
            })
            /**
             * 清理缓存parForm
             */
            this.cleanParForm()
          },

          searchParByCd(){
            this.$store.dispatch('SearchPar',this.filters.param_cd).then((result) =>{
              this.parItemList = result.data
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

        delPar(index, rowData){
          this.$confirm('Are you sure to delete the parameter?', 'Parameter Delete', {
            confirmButtonText: 'Confirm',
            cancelButtonText: 'Cancel',
            type: 'warning'
          }).then(() => {
            this.$store.dispatch('DeletePar',rowData.par_id).then((result) => {
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
              this.getPars()
            })
          }).catch(() => {
          });
        },

        batchDelPar(rows){
          this.$confirm('Are you sure to delete the parameters?', 'Patch Delete', {
            confirmButtonText: 'Confirm',
            cancelButtonText: 'Cancel',
            type: 'warning'
          }).then(() =>{
            rows.forEach(rowElement => {
              this.$store.dispatch('DeletePar',rowElement.par_id).then((result) => {
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
            this.getPars()
          }).catch(() => {
            this.$message({
              type: 'info',
              message: `取消批量删除!`
            })
            this.getPars()
          })
        }



        }
    }
</script>

<style scoped>

</style>
