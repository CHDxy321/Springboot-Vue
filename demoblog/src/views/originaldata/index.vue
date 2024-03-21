<template>
  <div>

<!--    <div style="display: flex">-->
<!--      &lt;!&ndash;      侧边栏&ndash;&gt;-->
<!--      <el-aside>-->
<!--        <SideMenu :items="items"></SideMenu>-->

<!--      </el-aside>-->
<!--      &lt;!&ndash;      内容区域&ndash;&gt;-->
<!--      <el-main>-->

<!--      <router-view style="flex:1"></router-view>-->
<!--      </el-main>-->
<!--&lt;!&ndash;      <router-view style="flex:1"/>&ndash;&gt;-->
<!--    </div>-->

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
          index: 'test5-4',
          title: '元数据治理'
        },
        {
          index: 'test5-7',
          title: '元数据介绍'
        }
      ]
    }
  },
};
</script>

<style>
</style>

