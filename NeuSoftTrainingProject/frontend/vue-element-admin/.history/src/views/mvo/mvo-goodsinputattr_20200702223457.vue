<template>
<div id="page-content" class="clearfix">


    <div class="page-header position-relative">
        <h1 style="color: #2679b5;font-size: 24px;font-weight: normal">品牌商<small style="font-size: 14px"><i class="icon-double-angle-right"></i> 公司信息</small></h1>
    </div>
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <div class="modal-body" style="max-height:none">
          <form class="form-horizontal">

            <div class="control-group">
              <label class="control-label" for="form-field-1">Company Name<br>公司名称(中)</label>
              <div class="controls">
                <input type="text" id="form-field-1">
              </div>
            </div>
           <div class="control-group">
                  <label class="control-label" for="form-field-1">Company Name<br>公司名称(英)</label>
                  <div class="controls">
                    <input type="text" id="form-field-1">
                  </div>
                </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">Brief Introduction<br>公司简介</label>
              <div class="controls">
                  <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
                      <div class="btn-group">
                          <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
                          <ul class="dropdown-menu">
                          <li><a data-edit="fontName Serif" style="font-family:'Serif'">Serif</a></li><li><a data-edit="fontName Sans" style="font-family:'Sans'">Sans</a></li><li><a data-edit="fontName Arial" style="font-family:'Arial'">Arial</a></li><li><a data-edit="fontName Arial Black" style="font-family:'Arial Black'">Arial Black</a></li><li><a data-edit="fontName Courier" style="font-family:'Courier'">Courier</a></li><li><a data-edit="fontName Courier New" style="font-family:'Courier New'">Courier New</a></li><li><a data-edit="fontName Comic Sans MS" style="font-family:'Comic Sans MS'">Comic Sans MS</a></li><li><a data-edit="fontName Helvetica" style="font-family:'Helvetica'">Helvetica</a></li><li><a data-edit="fontName Impact" style="font-family:'Impact'">Impact</a></li><li><a data-edit="fontName Lucida Grande" style="font-family:'Lucida Grande'">Lucida Grande</a></li><li><a data-edit="fontName Lucida Sans" style="font-family:'Lucida Sans'">Lucida Sans</a></li><li><a data-edit="fontName Tahoma" style="font-family:'Tahoma'">Tahoma</a></li><li><a data-edit="fontName Times" style="font-family:'Times'">Times</a></li><li><a data-edit="fontName Times New Roman" style="font-family:'Times New Roman'">Times New Roman</a></li><li><a data-edit="fontName Verdana" style="font-family:'Verdana'">Verdana</a></li></ul>
                      </div>
                      <div class="btn-group">
                          <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
                          <ul class="dropdown-menu">
                              <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                              <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                              <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                          </ul>
                      </div>
                      <div class="btn-group">
                          <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
                          <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
                          <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
                          <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
                      </div>
                      <div class="btn-group">
                          <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
                          <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
                          <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
                          <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
                      </div>
                      <div class="btn-group">
                          <a class="btn btn-info" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
                          <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
                          <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
                          <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
                      </div>


                      <div class="btn-group">
                          <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
                          <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
                      </div>
                      <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="" style="display: none;">
                  </div>

                  <div id="editor" contenteditable="true">
                      输入内容…
                  </div>
              </div>
            </div>

            <div class="control-group">
              <label class="control-label" for="form-field-1">GMC Report Type<br> 品牌商认证类型</label>
              <div class="controls">
                <input type="text" id="form-field-1">
              </div>
            </div>

            <div class="control-group">
              <label class="control-label" for="form-field-1">GMC Report Url<br>证书地址</label>
              <div class="controls">
                <input type="text" id="form-field-1">
              </div>
            </div>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" id="btnsave">保存</button>
      </div>
    </div>
  </div>

    <!-- Modal -->
<div style="margin-left: -385px;width: 770px;" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  </div></div>
</template>

<script>
export default {
  data() {
    return {
      tableData: [
        { id: 1, name: "joy", price: 34, num: 8888, sku: "GM001031" }
      ],
      orginTableData: [],
      dialogVisible: false
    };
  },
  mounted() {},
  methods: {}
};
</script>

<style>
.container{
  margin-left:20px;

}
.top {
  display: flex;
  flex-direction: row;
  width: 20%;
  font-size: 15px;
  font-weight: bold;
  justify-content: space-between;
}
</style>