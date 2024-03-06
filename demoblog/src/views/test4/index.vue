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
          index: 'business',
          title: '企业安全评估'
        },
        {
          index: 'test4-1',
          title: '企业评估细则'
        }
      ]
    }
  },
};
</script>

<style>
</style>

