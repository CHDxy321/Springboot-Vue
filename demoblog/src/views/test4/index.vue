<template>
  <div>
    <el-aside width="220px">
      <div class="sidebar" style="display: inline-block" >
      <el-menu router default-active="2" class="el-menu-vertical-demo"
        background-color="#000838" text-color="#fff" active-text-color="#ffd04b">
        <el-submenu index="1">
          <template slot="title"><i class="el-icon-notebook-1"></i>
            <span>企业安全评估</span>
          </template>
          <el-menu-item-group>
            <el-menu-item index="business">企业安全信息</el-menu-item>
            <el-menu-item index="test4-4">企业安全评估</el-menu-item>
            <el-menu-item index="test4-3">在线安全评估</el-menu-item>
          </el-menu-item-group>
        </el-submenu>
        <el-menu-item index="test4-1"><i class="el-icon-notebook-1"></i>
          <span slot="title">企业安全细则</span>
        </el-menu-item>
      </el-menu>
      </div>
    </el-aside>
    <el-main>
      <router-view></router-view>
    </el-main>
  </div>
</template>

<script>
import SideMenu from '@/components/sidemenu/leftmenu';
export default {
  methods:{
    // 根据路径绑定到对应的二级菜单，防止页面刷新重新跳回第一个
    toIndex(){
      console.log( this.$route.path.split('/')[2])
      return this.$route.path.split('/')[2];
    },
      handleOpen(key, keyPath) {
        console.log(key, keyPath);
      },
      handleClose(key, keyPath) {
        console.log(key, keyPath);
      }
  },
  components: {
    SideMenu
  },
  data() {
    return {
      items: [
        {
          index: 'business',
          title: '企业安全信息'
        },
        {
          index: 'test4-1',
          title: '企业安全细则'
        },
        {
          index: 'test4-3',
          title: '在线安全评估'
        },
        {
          index: 'test4-4',
          title: '企业安全评估'
        },
      ]
    }
  },
};
</script>

<style scoped>
/* 左侧菜单栏定位和位置大小设定 */
.sidebar {
  display: block;
  position: absolute;
  left: 0;
  top: 65px;
  bottom: 0;
  overflow-y: scroll;
  width: 100%;
}
.sidebar::-webkit-scrollbar {
  width: 0;
}
.sidebar-el-menu:not(.el-menu--collapse) {
  width:14.5%;
  min-height: 400px;

}
.sidebar > ul {
  height: 100%;
}

/* 左侧二级菜单项的样式 */
.el-menu-item-group{
  font-size: 14px !important;
  padding-left: 30px !important;
  color: #d0d7ee !important;
}

/* 左侧二级菜单选中时的样式 */
.el-menu-item.is-active {
  color: white !important;
  background: #3989fa!important;
}
.el-menu-item, .el-submenu__title {
  height: 50px !important;
  line-height: 50px !important;
}
</style>






