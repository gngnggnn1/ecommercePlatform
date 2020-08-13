<template>
  <el-table
    :data="tableData"
    stripe
    style="width: 100%">
    <el-table-column
      prop="role_id"
      label="角色id"
      width="180">
    </el-table-column>
    <el-table-column
      prop="role_name"
      label="姓名"
      width="180">
    </el-table-column>
    <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button type="primary" size="mini" @click="showAuth(scope.$index, scope.row)">查看权限</el-button>
          <el-button type="primary" size="mini" @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          <el-button type="danger" size="mini" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
  </el-table>
</template>

<script>
import axios from 'axios'
  export default {
      created() {
        this.loadData()
    },

    data() {
      return {
        tableData: []
      }
    },
    methods:{
        loadData(){
          axios.post("http://localhost:8088/role/getAll").then(res => {
            this.tableData = res.data.data
        })
        },
    }
  }
</script>