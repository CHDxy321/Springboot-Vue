<template>
  <div>
    <!-- 一级菜单下面所拥有的二级菜单 -->
    <el-aside>
      <SideMenu :items='items'></SideMenu>
    </el-aside>

    <!-- 以及二级菜单所对应的页面 -->
    <el-main>
      <router-view></router-view>
    </el-main>

  </div>
</template>

<script>
  import SideMenu from '@/components/sidemenu/leftmenu';
  export default {
    components:{
      SideMenu
    },
    data(){
      return {
        items: [
          {
            index: 'test1-1',
            title: '二级菜单1-1'
          },
          {
            index: 'test1-2',
            title: '二级菜单1-2'
          },
        ],
      }
    }
  }
</script>

<style scoped>
</style>
