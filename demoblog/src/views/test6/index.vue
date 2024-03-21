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
          index: 'test6-1',
          title: '企业异常数据'
        },
        {
          index: 'test6-2',
          title: '危运驾驶车辆'
        }
      ]
    }
  },
};
</script>

<style>
</style>

