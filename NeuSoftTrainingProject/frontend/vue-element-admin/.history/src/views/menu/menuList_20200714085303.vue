<template>
    <div>
  <el-table class = "table"
    :data="tableData"
    stripe
    style="width: 100%">
    <el-table-column label="序号" type="index" show-overflow-tooltip width="50">
      </el-table-column>
    <el-table-column
      prop="icon"
      label="图标"
      width="180">
    </el-table-column>
    <el-table-column
      prop="name"
      label="名称"
      width="180">
    </el-table-column>
    <el-table-column
      prop="url"
      label="资源路径">
    </el-table-column>
    <el-table-column
      prop="order"
      label="排序">
    </el-table-column>
    <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button type="primary" size="mini" @click="showDetail">展开</el-button>
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
        tableData: []
      }
    },
    created() {
        axios.post("http://localhost:8088/menu/getAll").then(res => {
            let menuList = res.data.data
            for (let i=0; i<menuList.length; i++){
              tableData.push({"icon": menuList[i].menu_icon, 
                              'name': menuList[i].menu_name,
                              "url": menuList[i].menu_url,
                              "order": menuList[i].menu_order          
              })
            }
            console.log(1111)
            console.log(tableData)
            // console.log(menuList)
            // for (item in menuList){
            //     tabledata.push(item.menu_icon)
            // }

        })
    },
    methods: {
        newInput(){
            
        }
    }
  }
</script>






