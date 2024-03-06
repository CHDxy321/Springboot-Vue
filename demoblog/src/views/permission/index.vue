<template>
  <div>
    <el-aside>
      <SideMenu :items="items"></SideMenu>
    </el-aside>
    <el-main>
      <router-view></router-view>
    </el-main>
  </div>
</template>

<script>
  import SideMenu from '@/components/sidemenu/leftmenu';
  export default {
    components: {
      SideMenu
    },
    data() {
      return {
        items: [
          {
            index: 'people',
            title: '人员管理'
          },
          {
            index: 'diary',
            title: '日志管理'
          },
          {
            index: 'authority',
            title: '权限管理',
          },

        ]
      }
    },
  };
</script>

<style>
</style>
