<template>
  <div class="content-box">
    <div class="pageTop">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/permission/people' }">系统权限管理</el-breadcrumb-item>
        <el-breadcrumb-item>权限管理</el-breadcrumb-item>
      </el-breadcrumb></div>

    <div class="page" style="width: 100%;margin-top: 5px"></div>

    <div class="pageLeft"  >
      <div class="pageContentTitle" style="padding-top:15px;line-height:30px;border-bottom:1px solid #E1E1E1;color:#262626;padding-left: 10px;font-size: 15px;font-weight: bold;">管理员权限
      </div>


      <div style="padding:10px 15px;">
        <el-table :data="departmentData" :highlight-current-row="true" :current-row-key="currentRow" @row-click="row_click"
                  style="padding: 3px 3px 3px">
          <el-table-column fixed prop="id" label="#" width="45" align="center"></el-table-column>
          <el-table-column prop="name" label="用户姓名"></el-table-column>
          <el-table-column prop="username" label="用户类型"></el-table-column>
          <el-table-column prop="trajectoryState" :show-overflow-tooltip="true" label="操作">
            <template slot-scope="scope">
              <div style="display: inline-block">
                <!--修改按钮-->
                <el-button type="primary" size="mini" @click="dialogFormVisible1 = true">修改</el-button>
                <el-dialog title="管理员角色修改" :visible.sync="dialogFormVisible1" width="350px">
                  <el-form ref="form" :model="form" label-width="80px">
                    <el-form-item label="用户名">
                      <el-input v-model="form.name"></el-input>
                    </el-form-item>
                    <el-form-item label="管理员角色">
                      <el-select v-model="form.username" placeholder="请选择管理员角色">
                        <el-option label="超级管理员" value="shanghai"></el-option>
                        <el-option label="一般管理员" value="beijing"></el-option>
                        <el-option label="普通用户" value="beijing"></el-option>

                      </el-select>
                    </el-form-item>

                  </el-form>
                  <div slot="footer" class="dialog-footer">
                    <el-button @click="dialogFormVisible1 = false">取 消</el-button>
                    <el-button type="primary" @click="dialogFormVisible1 = false">确 定</el-button>
                  </div>
                </el-dialog>

                <el-button type="success"size="mini" @click="dialogFormVisible = true">分配权限</el-button>
                <el-dialog title="管理员权限分类" :visible.sync="dialogFormVisible" width="300px">
                  <el-tree
                    :data="data"
                    show-checkbox
                    default-expand-all
                    :default-checked-keys="[1,2,3]"
                    node-key="id"
                    ref="tree"
                    highlight-current
                    :props="defaultProps">
                  </el-tree>

                  <div slot="footer" class="dialog-footer">
                    <el-button @click="dialogFormVisible = false">取 消</el-button>
                    <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
                  </div>
                </el-dialog>

                <el-button type="danger" size="mini" @click="delete(scope.row)">删除</el-button>
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

  </div>
</template>

<script>
  export default {
    name: "people",
    data() {
      return {
        data: [{
          id: 1,
          label: '数据统计服务',
          children: [{
            id: 4,
            label: '车辆数据管理',
            children: [{
              id: 6,
              label: '数据删除'
            },
              {
              id: 7,
              label: '数据添加'
            }]
          },{
            id: 5,
            label: '车辆报警信息',
            children: [{
              id: 8,
              label: '数据删除'
            },
              {
                id: 9,
                label: '数据添加'
              }]
          },
          ]
        }, {
          id: 2,
          label: '数据应用服务',
          children: [{
            id: 10,
            label: '风险评估'
          }, {
            id: 11,
            label: '车辆检测'
          }]
        }, {
          id: 3,
          label: '用户角色权限',
          children: [{
            id: 12,
            label: '用户添加'
          }, {
            id: 13,
            label: '用户删除'
          },
            {
              id: 14,
              label: '用户权限修改'
            }]
        }],
        formLabelWidth: '50px',
        dialogFormVisible: false,
        dialogFormVisible1: false,
        departmentData: [{
          name: '长安大学',
          username: '超级管理员'
        }, {
          name: '管理部',
          username: '一般管理员'
        }, {
          name: '展示',
          username: '普通用户'
        }, ],
        form: {
          name: '长安大学',
          username: '超级管理员',

        },
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
    width: 90%;
    margin-top: 1% ;
    margin-left: 1% ;
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
