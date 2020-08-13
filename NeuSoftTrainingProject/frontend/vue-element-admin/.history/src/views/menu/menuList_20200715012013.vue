<template>
    <div>
  <el-table class = "table"
    :data="tableData"
    stripe
    style="width: 100%"
    @expand-change="showDetail"
    >
    <el-table-column type="expand">
      <template>
        <el-table class="table"
        :data="tableData2"
        >
      <el-table-column label="菜单id" prop="menu_id" width="50">
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
          <el-button type="primary" size="mini" @click="handleEdit2(scope11.$index, scope11.row)">编辑</el-button>
          <el-button type="danger" size="mini" @click="handleDelete2(scope11.$index, scope11.row)">删除</el-button>
        </template>
      </el-table-column>
        </el-table>
      </template>
    </el-table-column>
    <el-table-column label="菜单id" prop="id" width="50">
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
          <el-button type="primary" size="mini" @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          <el-button type="danger" size="mini" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
  </el-table>
  <el-button type="primary" @click="newInput()">新增</el-button>

<el-dialog title="编辑菜单" :visible.sync="dialogFormVisible">
  <el-form :model="form">
    <el-form-item label="菜单名称" :label-width="formLabelWidth">
      <el-input v-model="form.menu_name" autocomplete="off"></el-input>
    </el-form-item>
    <el-form-item label="资源路径" :label-width="formLabelWidth">
      <el-input v-model="form.menu_url" autocomplete="off"></el-input>
    </el-form-item>
    <el-form-item label="排序" :label-width="formLabelWidth">
      <el-input v-model="form.menu_order" autocomplete="off"></el-input>
    </el-form-item>
    <el-form-item label="图标" :label-width="formLabelWidth">
      <el-input v-model="form.menu_order" autocomplete="off"></el-input>
    </el-form-item>
  </el-form>
  <div slot="footer" class="dialog-footer">
    <el-button @click="dialogFormVisible = false">取 消</el-button>
    <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
  </div>
</el-dialog>


  </div>
</template>

<script>
    import axios from 'axios'
    import { deleteByUrlAndName } from '@/api/menu'
import { countColumn } from 'codemirror'

  export default {
    data() {
      return {
        tableData: [],
        tableData2: [],
        dialogFormVisible: false,
        form: {},
        formLabelWidth: "120px"
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
            deleteByUrlAndName(row.url, row.name).then(res => {
            if(res.data==1){
              alert("删除成功")
            }
            else{
              alert("删除失败")
            }
        })
        },
        showDetail(row){
          this.tableData2 = row.children
        },
        handleDelete2(index,row){
          this.tableData2.splice(index, 1)
          deleteByUrlAndName(row.menu_url,row.menu_name).then(res =>{
            if(res.data==1){
              alert("删除成功")
            }
            else{
              alert("删除失败")
            }
          })
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
                              "children": menuList[i].children,
                              "id": menuList[i].menu_id          
              })
            }
        })
        },
        handleEdit2(index, row){
          this.dialogFormVisible = true
          this.form = {
            menu_url: row.menu_url,
            menu_name: row.menu_name,
            menu_icon:row.menu_icon,
            menu_order: row.menu_order
          }

        }
    }
  }
</script>






