<template>
<div>
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
          <el-button type="primary" size="mini" @click="handleEdit(scope.$index, scope.row)">管理</el-button>
          <el-button type="danger" size="mini" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
  </el-table>

  <el-dialog title="授权管理" :visible.sync="dialogFormVisible">
  <template>
    <el-transfer v-model="value" :data="data"></el-transfer>
  </template>
  <div slot="footer" class="dialog-footer">
    <el-button @click="dialogFormVisible = false">取 消</el-button>
    <el-button type="primary" @click="postEdit">确 定</el-button>
  </div>
</el-dialog>
</div>
</template>

<script>
import axios from 'axios'
  export default {
      created() {
        this.loadData()
    },

    data() {
        const generateData = _ => {
        const data = [];
        for (let i = 1; i <= 15; i++) {
          data.push({
            key: i,
            label: `备选项 ${ i }`,
            disabled: i % 4 === 0
          });
        }
        return data;
      };
      return {
        data: generateData(),
        value: [1, 5],
        tableData: [],
        dialogFormVisible: false
      }
    },
    methods:{
        loadData(){
          axios.post("http://localhost:8088/role/getAll").then(res => {
            this.tableData = res.data.data
        })
        },
        handleEdit(index, row){
            
            this.dialogFormVisible = true
        },
        postEdit(){
            this.dialogFormVisible = false
        }
    }
  }
</script>