webpackJsonp([25],{"3qz9":function(t,e,l){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a={data:function(){return{formInline:{data:"",report:""},show1:!1,input:null,total:null,total1:null,tableData:null,tableData1:null,dialogTableVisible:!1,dialogFormVisible:!1,modifydialogVisible:!1,currentPage4:1,currentPage5:1}},methods:{isshow:function(){this.show1=!this.show1},onSubmit:function(){},submitForm:function(){var t=this,e=this;this.$refs.ruleForm.validate(function(l){if(!l)return!1;t.$axios.post("http://localhost:8181/book/save",t.ruleForm).then(function(t){"success"==t.data&&e.$alert("《"+e.ruleForm.name+"》创建成功！","消息",{confirmButtonText:"确定",callback:function(t){e.$router.push("/test2/test2-1")}})})})},resetForm:function(t){this.$refs[t].resetFields()},deleteid:function(t){var e=this;this.$confirm("确定删除该条记录吗?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(){e.$axios.delete("http://localhost:8181/book/deleteById/"+t.id).then(function(t){window.location.reload()}),e.$message({type:"success",message:"删除成功!"})}).catch(function(){e.$message({type:"info",message:"已取消删除"})})},edit:function(t){this.$router.push({path:"/modify",query:{id:t.id}})},page:function(t){var e=this;this.$axios.get("http://localhost:8181/ass/findAll/"+t+"/8").then(function(t){e.tableData=t.data.content,e.total=t.data.totalElements})},page1:function(t){var e=this;this.$axios.get("http://localhost:8181/sheet1/findAll/"+t+"/8").then(function(t){e.tableData1=t.data.content,e.total1=t.data.totalElements})}},created:function(){var t=this;this.$axios.get("http://localhost:8181/ass/findAll/1/8").then(function(e){console.log(e.data),t.tableData=e.data.content,t.total=e.data.totalElements}).catch(function(t){console.log(t)}),this.$axios.get("http://localhost:8181/sheet1/findAll/1/8").then(function(e){console.log(e.data),t.tableData1=e.data.content,t.total1=e.data.totalElements})}},n={render:function(){var t=this,e=t.$createElement,l=t._self._c||e;return l("div",{staticClass:"content-box"},[l("div",{staticClass:"container",staticStyle:{"margin-top":"0px"}},[l("div",{staticStyle:{"margin-left":"10px"}},[l("el-breadcrumb",{attrs:{"separator-class":"el-icon-arrow-right"}},[l("el-breadcrumb-item",{attrs:{to:{path:"/test4/business"}}},[t._v("企业安全评估")]),t._v(" "),l("el-breadcrumb-item",[t._v("企业安全指标")])],1)],1),t._v(" "),l("div",{staticClass:"table-container",staticStyle:{margin:"5px","margin-top":"10px"}},[l("el-table",{attrs:{data:t.tableData,border:"",fit:"true"}},[l("el-table-column",{attrs:{fixed:"",prop:"id",label:"编号",width:"80",align:"center",sortable:""}}),t._v(" "),l("el-table-column",{attrs:{prop:"agebelow30",label:"30岁以下",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"agefrom30to40",label:"30-40岁",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"agefrom40to50",label:"40-50岁",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"ageupper50",label:"50岁以上",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"workagebelow2",label:"工作2年以下",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"workagefrom2to5",label:"工作2-5年",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"workageupper5",label:"工作5年以上",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"breakscore",label:"分数",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"vehiclenums",label:"驾驶车辆",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"vehicleone",label:"驾驶1辆",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"vehicletwo",label:"驾驶2辆",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"peoplenums",label:"人员数量",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"trainnums",label:"培训数量",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"traintime",label:"培训时间",width:"110",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"saftymoney",label:"安全成本",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"drivekilometer",label:"驾驶里程",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{label:"操作",width:"100",align:"center",fixed:"right"},scopedSlots:t._u([{key:"default",fn:function(e){return[l("div",{staticStyle:{display:"inline-block"}},[l("div",{staticStyle:{display:"inline-block"}},[l("el-button",{attrs:{type:"text",size:"mini"},on:{click:function(l){return t.edit(e.row)}}},[t._v("编辑")])],1),t._v(" "),l("el-button",{staticClass:"delete-button",attrs:{slot:"reference",size:"mini",type:"text"},on:{click:function(l){return t.deleteid(e.row)}},slot:"reference"},[t._v("删除")])],1)]}}])})],1),t._v(" "),l("el-pagination",{attrs:{"current-page":t.currentPage4,"page-size":6,layout:"total,prev, pager, next, jumper",total:t.total},on:{"current-change":t.page}})],1),t._v(" "),l("el-row",[l("el-button",{staticStyle:{"margin-left":"15px"},attrs:{type:"primary",fixed:"left"},on:{click:t.isshow}},[t._v("企业数据量化")])],1),t._v(" "),l("div",{directives:[{name:"show",rawName:"v-show",value:t.show1,expression:"show1"}],staticClass:"table-container",staticStyle:{margin:"12px"}},[l("div",{staticStyle:{margin:"10px"}},[l("el-breadcrumb",{attrs:{"separator-class":"el-icon-arrow-right"}},[l("el-breadcrumb-item",{attrs:{to:{path:"/test4/business"}}},[t._v("企业安全评估")]),t._v(" "),l("el-breadcrumb-item",[t._v("企业安全指标量化结果")])],1)],1),t._v(" "),l("el-table",{attrs:{data:t.tableData1,border:"",fit:"true"}},[l("el-table-column",{attrs:{fixed:"",prop:"id",label:"编号",width:"80",align:"center",sortable:""}}),t._v(" "),l("el-table-column",{attrs:{prop:"dg1",label:"DG1",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"dg2",label:"DG2",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"pt1",label:"PT1",width:"150",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"pt2",label:"PT2",width:"150",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"pt3",label:"PT3",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"pt4",label:"PT4",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"pt5",label:"PT5",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv1",label:"BV1",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv2",label:"BV2",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv3",label:"BV3",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv4",label:"BV4",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv5",label:"BV5",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv6",label:"BV6",width:"100",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv1",label:"BM1",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv2",label:"BM2",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bv3",label:"BM3",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bm4",label:"BM4",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bm5",label:"BM5",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bm6",label:"BM6",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{prop:"bm7",label:"BM7",width:"120",align:"center"}}),t._v(" "),l("el-table-column",{attrs:{label:"操作",width:"100",align:"center",fixed:"right"},scopedSlots:t._u([{key:"default",fn:function(e){return[l("div",{staticStyle:{display:"inline-block"}},[l("div",{staticStyle:{display:"inline-block"}},[l("el-button",{attrs:{type:"text",size:"mini",plain:""},on:{click:function(l){return t.edit(e.row)}}},[t._v("编辑")])],1),t._v(" "),l("el-button",{staticClass:"delete-button",attrs:{slot:"reference",size:"mini",type:"text"},on:{click:function(l){return t.deleteid(e.row)}},slot:"reference"},[t._v("删除")])],1)]}}])})],1),t._v(" "),l("el-pagination",{attrs:{"current-page":t.currentPage5,"page-size":6,layout:"total,prev, pager, next, jumper",total:t.total1},on:{"current-change":t.page1}})],1)],1)])},staticRenderFns:[]};var r=l("VU/8")(a,n,!1,function(t){l("HO2h")},null,null);e.default=r.exports},HO2h:function(t,e){}});
//# sourceMappingURL=25.573a5187878685855255.js.map