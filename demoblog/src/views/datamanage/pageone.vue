<template>
  <!--一个template只能有一个根节点，所以要加div标签-->
  <div>
    <el-table
      :data="tableData"
      border
      style="width: 70%;height: 100%;">
      <el-table-column
        fixed
        prop="id"
        label="编号"
        width="100">
      </el-table-column>
      <el-table-column
        prop="name"
        label="姓名"
        width="120">
      </el-table-column>
      <el-table-column
        prop="type"
        label="所属行业"
        width="120">
      </el-table-column>
      <el-table-column
        prop="adress"
        label="管辖机构"
        width="250">
      </el-table-column>
      <el-table-column
        prop="status"
        label="经营状态"
        width="120">
      </el-table-column>

      <el-table-column fixed="right" label="操作" width="150">
        <template slot-scope="scope">
          <!--<el-button @click="edit(scope.row)" type="text" size="small">修改</el-button>-->
          <!--<el-button @click="deleteid(scope.row)"type="text" size="small">删除</el-button>-->
          <!--修改按钮-->
          <el-popover placement="top" width="100" v-model="visible">
            <p>确定要进行修改吗？</p>
            <div style="text-align: right; margin: 0">
              <el-button size="mini" type="text" @click="visible = false">取消</el-button>
              <el-button type="primary" size="mini" @click="edit(scope.row)">确定</el-button>
            </div>
            <el-button  size="mini" slot="reference">修改</el-button>
          </el-popover>

          <!--删除按钮-->
          <el-popover placement="top" width="100" v-model="visible">
            <p>确定删除吗？</p>
            <div style="text-align: right; margin: 0">
              <el-button size="mini" type="text" @click="visible = false">取消</el-button>
              <el-button type="primary" size="mini" @click="deleteid(scope.row)">确定</el-button>
            </div>
            <el-button  size="mini"  slot="reference">删除</el-button>
          </el-popover>
        </template>
      </el-table-column>
    </el-table>

    <!--分页组件-->
    <!-- page-size每页展示的记录数-->
    <!--创建点击事件@currentchange="page"-->
    <el-pagination
      background
      layout="prev, pager, next"
      page-size="10"
      :total="70"
      @current-change="page">
    </el-pagination>
  </div>
</template>

<script>
  export default {
    methods: {
      deleteid(row){
        const _this=this;
        this.$axios.delete('http://localhost:8181/book/deleteById/'+row.id).then(function (resp) {
          // 消息框
          _this.$alert('《'+row.name+'》删除成功！', '消息', {
            confirmButtonText: '确定',
            // 跳转界面
            callback: action => {
              // 前端自带动态刷新界面
              window.location.reload()
            }
          })
        })

      },
      edit(row) {
        // 跳转页面

        this.$router.push({
          path:'/update',
          query:{
            id:row.id
          }
        })
      },
      // 页面
      page(currentPage) {
        const _this=this;
        this.$axios.get('http://localhost:8181/book/findAll/'+currentPage+'/10').then(function (resp) {
//         console.log(resp.data)
          _this.tableData=resp.data.content;
          _this.total=resp.data.totalElements
          // alert(currentPage)
        })
      }
    },
    // 取数据
    created(){
      const _this=this;
      // "'http://localhost:8181/book/findAll/{page}/{size}"
      this.$axios.get('http://localhost:8181/book/findAll/1/10').then(function (resp) {
        // console.log(resp.data)
        _this.tableData=resp.data.content;
        _this.total=resp.data.totalElements
      })

    },
    // total定义总数,null定义空值，由后端读取数据
    data(){
      return {
        total:null,
        tableData:null
      }
    }
  }
</script>

<style scoped>

</style>
