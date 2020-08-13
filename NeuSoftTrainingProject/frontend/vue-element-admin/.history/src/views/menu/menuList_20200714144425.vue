<template>
    <div>
  <el-table class = "table"
    :data="tableData"
    stripe
    style="width: 100%"
    >
    <el-table-column type="expand" >
      <template slot-scope="scope1">
        <el-table class="table"
        :data="tableData2"
        @expand-change="showDetail(scope1.$index, scope1.row)"
        >
      <el-table-column label="序号" type="index" show-overflow-tooltip width="50">
      </el-table-column>
    <el-table-column
      prop="menu_icon"
      label="图标"
      width="100">
      <template slot-scope='scope2'>
        <i :class="scope2.row.menu_icon"></i>
      </template>
    </el-table-column>
    <el-table-column
      prop="menu_name"
      label="名称"
      width="180">
    </el-table-column>
    <el-table-column
      prop="menu_url"
      label="资源路径"
      width="300"
      >
    </el-table-column>
    <el-table-column
      prop="menu_order"
      label="排序">
    </el-table-column>
    <el-table-column label="操作" align="center">
        <template slot-scope="scope11">
          <el-button type="danger" size="mini" @click="handleDelete2(scope11.$index, scope11.row)">删除</el-button>
        </template>
      </el-table-column>
        </el-table>
      </template>
    </el-table-column>
    <el-table-column label="序号" type="index" show-overflow-tooltip width="50">
      </el-table-column>
    <el-table-column
      prop="icon"
      label="图标"
      width="180">
      <template slot-scope='scope_'>
        <i :class="scope_.row.icon"></i>
      </template>
    </el-table-column>
    <el-table-column
      prop="name"
      label="名称"
      width="180">
    </el-table-column>
    <el-table-column width="200"
      prop="url"
      label="资源路径">
    </el-table-column>
    <el-table-column
      prop="order"
      label="排序">
    </el-table-column>
    <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button type="danger" size="mini" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
  </el-table>
  <el-button type="primary" @click="newInput()">新增</el-button>
  </div>
</template>

<script>
    import axios from 'axios'

  export default {
    data() {
      return {
        tableData: [],
        tableData2: []
      
      }
    },
    created() {
        this.loadData();
    },
    methods: {
        newInput(){
            
        },
        handleDelete(index,row){ //删除行数
            this.tableData.splice(index, 1)
            axios.post("http://localhost:8088/menu/deleteByUrl?url=${row.url}").then(res => {
            if(res == 1){
              alert("删除成功")
            }
            else{
              alert("删除失败")
            }
        })
        },
        showDetail(index, row){
          console.log(111)
            this.tableData2 = row.children
        },
        handleDelete2(index,row){
          this.tableData2.splice(index, 1)
        },
        loadData(){
          axios.post("http://localhost:8088/menu/getAll").then(res => {
            let menuList = res.data.data
            console.log(menuList)
            for (let i=0; i<menuList.length; i++){
              this.tableData.push({"icon": menuList[i].menu_icon, 
                              "name": menuList[i].menu_name,
                              "url": menuList[i].menu_url,
                              "order": menuList[i].menu_order,
                              "children": menuList[i].children          
              })
            }
        })
        }
    }
  }
</script>






