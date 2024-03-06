<template>
  <div class="login-container">
    <div class="login_header">
      <div class="login_logio">
        <img src="/static/img/login_logo0.png" height="100%">
      </div>
      <div class="top-bar__item">
        <img src="/static/img/img.png" style="width:33px;">
        <div style="display: inline-block;font-size: 13px">
          <p style="color:#FFFFFF">长安大学</p>
          <p style="color:#FFFFFF;background:rgba(7,115,252,0.14);border-radius:4px;">超级管理员</p>
        </div>
        <el-popover
          placement="top-start"
          width="150"
          trigger="hover">
          <div style="text-align:left;color:#E8E8E8">
            <p style="line-height:35px;border-bottom:1px solid rgba(232,232,232,1);margin-left:10px;vertical-align: middle;"><img src="/static/img/icon_ch_paswd.png" style="margin-right:10px;vertical-align: middle;"><el-link href="#">修改密码</el-link></p>
            <p style="line-height:35px;margin-left:10px;vertical-align: middle;"><img src="/static/img/icon_exit.png" style="margin-right:10px;vertical-align: middle;"><el-link href="/">退出登录</el-link></p>
          </div>
          <img src="/static/img/icon_down.png" slot="reference">
        </el-popover>
      </div>
      <div class="top-bar__item">
        <el-popover
          placement="top-end"
          width="230"
          trigger="hover">
        </el-popover>
      </div>
    </div>


    <div class="PortalPage_content">
      <div class="PortalPage_Item">
        <div class="LargeDataCenter" @click="DataCenter">
          <img src="/static/img/icon_data.png">
          <p style="width:100%;">数据分析中心</p>
        </div>
        <div class="PortalItem">
          <ul style="float:left">
<!--            <li @click="RouteJump('/test4/business')">-->
            <li @click="RouteJump1">
              <img src="/static/img/icon_statics.png">
              <p>企业安全评估</p>
            </li>
           <li @click="RouteJump2">
              <img src="/static/img/icon_statics.png">
              <p>数据统计服务</p>
            </li>
          </ul>
<!--          <ul style="">
            <li @click="RouteJump3">
              <img src="/static/img/icon_statics.png">
              <p>数据标准说明</p>
            </li>
          </ul>-->
            <ul style="float: left">
            <li @click="RouteJump4">
              <img src="/static/img/icon_statics.png">
              <p>数据应用服务</p>
            </li>
            <li @click="RouteJump5">
              <img src="/static/img/icon_statics.png">
              <p>系统权限管理</p>
            </li>
          </ul>
<!--          <ul>
            <li @click="RouteJump4">
              <img src="/static/img/icon_statics.png">
              <p>数据应用服务</p>
            </li>
            <li @click="RouteJump6">
              <img src="/static/img/icon_statics.png">
              <p>元数据管理</p>
            </li>
          </ul>-->
<!--          <div style="clear:both;"></div>-->
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data () {
      return {
      }
    },
    create () {
    },
    mounted () {
    },
    methods: {
      RouteJump (route) {
        if(route=='/StaticMaterialManagement'){
          this.$router.push({
            path: '/StaticMaterialManagement/MaterialIndex/index',
          })
        }else{
          this.$router.push({
            path: '/home',
          })
        }
        localStorage.setItem('menu', route)
        localStorage.setItem('Leftmenu', '/')
      },
      RouteJump1(){
        this.$router.push({
          path:'/test4/business'
        })
      },
      RouteJump2(){
        this.$router.push({
          path:'/test2/test2-1'
        })
      },
      RouteJump3(){
        this.$router.push({
          path:'/Home/standard'
        })
      },
      RouteJump4(){
        this.$router.push({
          path:'/test3/test3-1'
        })
      },
      RouteJump5(){
        this.$router.push({
          path:'/permission/people'
        })
      },
      RouteJump6(){
        this.round().push({
          path:'/originaldata/data'
        })
      },
      DataCenter () {
        this.$router.push({
          path: '/Main'
        })
      }
    }
  }
</script>
<style>
  .login-container{
    position: relative;
    width: 100%;
    height: 100%;
    margin: 0 auto;
    background-color: #0e1032;
    background-size: 100%;
  }
  .login_header{
    position:absolute;
    top:0;
    width:100%;
    height:64px;
    background: url('/static/img/line.png') no-repeat left bottom;
  }
  .login_logio{float:left;height:100%;vertical-align: middle;}
  .login_weather{
    height:100%;
    float:right;
    padding-right:20px;
    color:#fff;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
  }
  .login-container .top-bar__item {float:right;position: relative;
    display: inline-block;
    margin: 17px 0px;
    font-size: 13px;
    color:#505050;}

  .PortalPage_content{
    position:absolute;
    left:50%;
    top:50%;
    transform: translate(-50%,-50%);
    margin-left:100px;
  }
  .PortalPage_content .PortalPage_Item{
    position: relative;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    color:#00D1DB;
  }
  .LargeDataCenter{
    width:355px;
    height:341px;
    background:url('/static/img/pic_data.png') no-repeat;
    font-size:18px;
    text-align:center;
    cursor:pointer;
  }
  .PortalItem{
    width:auto;
    min-width:590px;
    height:396px;
    text-align:center;
  }
  .PortalItem ul{height:50%;margin-left:40px;}
  .PortalItem ul:nth-child(2) li{margin-top:23px;}
  .PortalItem ul li{float:left;
    width:172px;
    height:172px;
    cursor:pointer;
    margin-right:10px;
    background:url('/static/img/pic_other.png') no-repeat;
  }
  .LargeDataCenter img{margin-top:40px;}
  .PortalItem img{margin-top:20px;}
</style>
