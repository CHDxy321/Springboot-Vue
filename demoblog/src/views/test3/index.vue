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
                    index: 'test3-1',
                    title: '高速公路车辆识别'
                },
                {
                    index: 'test3-2',
                    title: '危货运输风险评估'
                },
              {
                index: 'test3-3',
                title: '实时车辆视频监管'
              },
            ]
        }
    },
};
</script>

<style>
</style>
