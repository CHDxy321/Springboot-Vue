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
                    index: 'test2-1',
                    title: '车辆数据管理'
                },
                {
                    index: 'test2-2',
                    title: '车辆报警信息'
                },
                {
                    index: 'test2-3',
                    title: '车辆运输信息'
                },
        ],
        }
    },
}
</script>

<style scoped>

</style>
