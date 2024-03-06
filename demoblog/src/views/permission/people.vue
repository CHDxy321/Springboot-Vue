<template>
  <div class="content-box">
     <div class="pageTop">
      <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/permission/people' }">系统权限管理</el-breadcrumb-item>
      <el-breadcrumb-item>人员管理</el-breadcrumb-item>
     </el-breadcrumb></div>

     <div class="page" style="width: 100%;margin-top: 5px"></div>

     <div class="pageLeft" style="display: inline-block">
       <div class="pageContentTitle" style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">用户列表
       </div>
       <div style="margin: 10px 20px 10px;float: right">
         <div style="display: inline-block">
           部门:
           <el-select v-model="value" placeholder="请选择部门" style="width: 140px">
           <el-option v-for="item in options" :key="item.value" :label="item.label" :value="item.value" style="margin-left: 10px"></el-option>
         </el-select>
         </div>
         <el-button type="primary"  >查询</el-button>
         <el-button type="primary"  >添加人员</el-button>
       </div>

       <div style="padding:10px 15px;">
         <el-table :data="departmentData" :highlight-current-row="true" :current-row-key="currentRow" @row-click="row_click"
                   style="padding: 3px 3px 3px">
           <el-table-column fixed prop="id" label="#" width="45" align="center"></el-table-column>
           <el-table-column prop="name" label="用户姓名"></el-table-column>
           <el-table-column prop="username" label="登录账号"></el-table-column>
           <el-table-column prop="department" :show-overflow-tooltip="true" label="所属部门"></el-table-column>
           <el-table-column prop="work" :show-overflow-tooltip="true" label="人员岗位"></el-table-column>
           <el-table-column prop="telephone" :show-overflow-tooltip="true" width="120" label="联系电话"></el-table-column>
           <el-table-column prop="status" :show-overflow-tooltip="true" label="在线状态"></el-table-column>
           <el-table-column prop="trajectoryState" :show-overflow-tooltip="true" label="操作">
             <template slot-scope="scope">
               <div style="display: inline-block">
                 <!--修改按钮-->
                 <!--<el-button type="mini" size="mini" @click="edit(scope.row)">修改</el-button>-->
                 <div style="display: inline-block">
                   <img style="width: 20px;height: 20px" src="/static/img/icon_edit.png" @click="edit(scope.row)">
                 </div>
                 <!--删除按钮-->
                  <img style="width: 20px;height: 20px" src="/static/img/icon_delete.png"  @click="deleteid(scope.row)">
               </div>
             </template>
           </el-table-column>
         </el-table>
         <div class="paginationContainer">
           <!--分页组件-->
           <!-- page-size每页展示的记录数-->
           <!--创建点击事件@currentchange="page"-->
           <el-pagination
             @current-change="page"
             :current-page="currentPage4"
             :page-size="17"
             layout="total,prev, pager, next, jumper"
             :total="total">
           </el-pagination>
         </div>
       </div>
     </div>

     <div class="pageRight" style="display: inline-block">
     <div class="pageContentTitle" style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">
      用户信息</div>

       <div class="eventContent" style="height:calc(100% - 50px);margin-top: 20px">
         <!--事件内容-->
             <ul :v-model="selectedData" style="list-style: none;">
               <li >
                 <div style="width:35%;margin-left:30%;">
                 <img :src="selectedData.image" style="width:120px;height:170px;display:inline-block;vertical-align:middle;">
                 </div></li>
               <div style="color: #565457;font-size: 15px;margin-left:25%;vertical-align: bottom">
               <li><span>用户姓名：</span><span>{{selectedData.name}}</span></li>
               <li><span>联系电话：</span><span>{{selectedData.telephone}}</span></li>
               <li><span>手机号码：</span><span>{{selectedData.telephone}}</span></li>
               <li><span>所属部门：</span><span>{{selectedData.department}}</span></li>
               <li><span>人员岗位：</span><span id="personnelPosts" :title="selectedData.work">{{selectedData.work}}</span></li></div>
             </ul>
           </div>
         </div>
  </div>
</template>

<script>
    export default {
        name: "people",
data() {
        return {
          departmentData:[],
          total:null,
          currentRow: 1,
          selectedData: {},
          imageUrl: '',
          props: {
            currentPage4: 4,
            departmentData: [],
            selectedData: {},
            defaultProps: {
              children: 'children',
              label: 'label'
            }
          },
          options: [{
            value: '选项1',
            label: '管理部'
          }, {
            value: '选项2',
            label: '规划部'
          }, {
            value: '选项3',
            label: '办公部'
          }, {
            value: '选项4',
            label: '人事部'
          }, {
            value: '选项5',
            label: '安全管理部'
          }],
          value: ''
        };
      },
 methods: {
//表格点击事件
// 设置当前选中项
 loadTabs() {
     $('.workProcessTabs p').click(function() {
       $(this).addClass('active')
       $(this).siblings().removeClass('active')
       var index = $('.dc_menu').index(this)
       $('.workProcessTable').hide()
       $('.workProcessTable').eq(index).show()
     })
   },

// 设置当前选中项

row_click(value) {
     console.log(value)
     this.selectedData = value
     let that = this
     setTimeout(function() {
       that.loadPersonelPosts()
     }, 100)
   },


// 修改数据
   edit(row) {
     // 跳转页面
     this.$router.push({
       path:'/modify',
       query:{
         id:row.id
       }
     })
   },
// 删除数据
   deleteid(row){
// 消息框提示
     this.$confirm('确定删除该条记录吗?', '提示', {
       confirmButtonText: '确定',
       cancelButtonText: '取消',
       type: 'warning'
     }).then(() => {
       const _this=this;
       this.$axios.delete('http://localhost:8181/people/deleteById/'+row.id).then(function (resp) {
// 前端自带动态刷新界面
         window.location.reload()
       });
       this.$message({
         type: 'success',
         message: '删除成功!'
       });
     }).catch(() => {
       this.$message({
         type: 'info',
         message: '已取消删除'
       });
     });
   },
// 页面
   page(currentPage) {
     const _this=this;
     this.$axios.get('http://localhost:8181/people/findAll/'+currentPage+'/8').then(function (resp) {
       //  console.log(resp.data)
       _this.departmentData=resp.data.content;
       _this.total=resp.data.totalElements;

     })
   },
      },
 // 取数据
created(){
      const _this=this;
      // "'http://localhost:8181/book/findAll/{page}/{size}"
      this.$axios.get('http://localhost:8181/people/findAll/1/8').then(function (resp) {
        console.log(resp.data)
        _this.departmentData=resp.data.content;
        _this.total=resp.data.totalElements
        that.selectedData = that.departmentData[0]
        })
      }
    }
</script>

<style scoped>
.pageTop{
  background: #fff;
  width: 100%;
  height: 30px;
  padding-top: 20px;
  padding-left: 20px;
}
.pageLeft{
  background: #fff;
  border: 1px solid #ddd;
  width: 75%;
  margin-left: 0.5% ;
  float: left;
}
.pageRight{
  background: #fff;
  border: 1px solid #ddd;
  width: 22%;height: 80%;
  margin-left: 0.4% ;
  float: left;
}
.personnelPosts{display:inline-block;vertical-align:middle;width:100px;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;}
</style>
