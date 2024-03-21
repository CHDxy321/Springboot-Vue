<template>
  <div>
    <el-aside>

      <SideMenu :items='items'></SideMenu></el-aside>
    <el-main>
      <router-view></router-view>
    </el-main>

  </div>
</template>

<script>
  import SideMenu from '@/components/sidemenu/leftmenu.vue';
  export default {
    components:{
      SideMenu
    },
    data(){
      return {
        items: [
          {
            index: 'standard',
            title: '相关文献资料'
          },
          {
            index: 'description',
            title: '数据说明资料'
          },
          {
            index: 'test2-3',
            title: '系统说明文档'
          },
        ],
      }
    },
  }
</script>

<style scoped>

</style>
