<template>
  <div class="pageContent">
    <div class="pageHeader" style="padding: 15px">
      
      <h1 style="color: #2679b5;font-size: 24px;font-weight: normal margin:15px">
        品牌商
        <small style="font-size: 14px; color: grey">
          <font-awesome-icon :icon="['fas','angle-double-right']" size="2px" />
          公司信息</small>
      </h1>
    </div>
    <el-divider content-position="left" id="divider"></el-divider>
    <el-table
    ref="multipleTable"
    :data="tableData"
    tooltip-effect="dark"
    style="width: 100%"
    @selection-change="handleSelectionChange">
    <el-table-column
      type="selection"
      width="55">
    </el-table-column>
    <el-table-column
      prop="dic_type"
      label="字典类型"
      width="120">
    </el-table-column>
    <el-table-column
      prop="use_dsc"
      label="用途描述"
      width="120">
    </el-table-column>
    <el-table-column
      prop="code"
      label="编码"
      show-overflow-tooltip>
    </el-table-column>
    <el-table-column
      prop="code_val"
      label="编码值"
      show-overflow-tooltip>
    </el-table-column>
    <el-table-column label="操作">
      <template slot-scope="scope">
        <el-button
          size="mini"
          @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
        <el-button
          size="mini"
          type="danger"
          @click="handleDelete(scope.$index, scope.row)">删除</el-button>
      </template>
    </el-table-column>
  </el-table>

  <el-button type="button" @click="dialogVisible = true">新增</el-button>
 
  <el-dialog title="表单弹框" :visible.sync="dialogVisible" width="30%">
    <el-form ref="form" :model="form" label-width="80px">
      <el-form-item label="字典类型">
        <el-input v-model="form.dic_type"></el-input>
      </el-form-item>
      <el-form-item label="用途描述">
        <el-input v-model="form.use_dsc"></el-input>
      </el-form-item>
      <el-form-item label="编码">
        <el-input v-model="form.code"></el-input>
      </el-form-item>
      <el-form-item label="编码值">
        <el-input v-model="form.code_val"></el-input>
      </el-form-item>
    </el-form>
    <span slot="footer" class="dialog-footer">
      <el-button @click="dialogVisible = false">取 消</el-button>
      <el-button type="primary" @click="dialogVisible = false">保存</el-button>
    </span>
  </el-dialog>
  </div>
</template>