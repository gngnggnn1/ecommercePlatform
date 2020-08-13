<template>
  <el-container id="main-content" class="clearfix">
    <el-header>
      <h1 style="color: #2679b5;">Add a new store</h1>
    </el-header>
    <el-main id="page-content" class="clearfix">
      <div class="content">
        <div class="gray shop">Set up API connection with your store by account authorisation</div>

        <el-button class="btn btn-primary btn-block shop" @click="dialogFormVisible = true">Amazon</el-button>
        <el-button class="btn btn-primary btn-block shop" @click="dialogFormVisible = true">eBay</el-button>
      </div>
    </el-main>
    <el-dialog title="提现" :visible.sync="dialogFormVisible" append-to-body="false" width="1200px">
      <el-form ref="form" :model="form" label-width="80px">
        <el-form-item label="Store Name">
          <el-input type="textarea" v-model="form.projectID"></el-input>
        </el-form-item>
        <el-form-item label="Seller ID">
          <el-input type="textarea" v-model="form.projectName"></el-input>
        </el-form-item>
        <el-form-item label="Marketplace ID">
          <el-input type="textarea" v-model="form.projectType"></el-input>
        </el-form-item>
        <el-form-item label="MWS Auth Token">
          <el-input type="textarea" v-model="form.projectPrice"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button size="small" @click="dialogFormVisible = false">Cancle</el-button>
        <el-button size="small" type="primary" @click="add()">Save</el-button>
      </div>
    </el-dialog>
  </el-container>
</template>

<script>
    export default{
        data(){
            return{
                    dialogFormVisible: false,
                    form: {
                        projectID: "",
                        projectName: "",
                        projectType: 1,
                        projectPrice: "",
                        projectDescription: ""
                    }
            }
        }
    }
</script>
    
<style>
.el-container {
  margin: 0;
  background: #fff;
  padding: 8px 20px 24px;
}
.el-main {
  padding-bottom: 0;
  background-color: #e4e6e9;
  font-family: "Open Sans";
  font-size: 13px;
  min-height: 100%;
}
.store {
  border: 1px solid #ccc;
  border-radius: 10px;
  margin: 20px 0 20px 0;
  padding-left: 3%;
}
.p {
  line-height: 40px;
  color: #666;
  border-top: 1px solid #ccc;
}
.btn-primary {
  background-color: #2283c5 !important;
  border-color: #2283c5;
}
.btn {
  display: inline-block;
  padding: 0 12px 1px;
  line-height: 32px;
  color: #fff !important;
  font-size: 14px;
  background-image: none !important;
  border: 5px solid #abbac3;
  border-radius: 0 !important;
  box-shadow: none !important;
  -moz-transition: all 0.1s ease-in-out;
  -webkit-transition: all 0.1s ease-in-out;
  -o-transition: all 0.1s ease-in-out;
  -ms-transition: all 0.1s ease-in-out;
  transition: all 0.1s ease-in-out;
  cursor: pointer;
  vertical-align: middle;
  margin: 0;
  position: relative;
}
input,
button,
select,
textarea {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.div {
  padding-bottom: 0;
  background-color: #e4e6e9;
  font-family: "Open Sans";
  font-size: 13px;
  min-height: 100%;
}
.el-button {
  color: #2283c5;
}
</style>