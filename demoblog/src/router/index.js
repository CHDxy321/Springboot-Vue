import Vue from 'vue';
import Router from 'vue-router';
Vue.use(Router);

export default new Router({
  routes: [
    // 登录页面
    {
      path: '/',
      component: () => import('../views/login.vue'),
    },
    {
      path: '/register',
      component: () => import('../views/register.vue'),
    },
    //目录界面
    {
      path:'/content',
      component:()=>import('../views/content.vue')
    },
    //二级目录界面 元数据管理
    // {
    //   path:'/Header',
    //   component:()=>import('../components/Header/Header')
    // },
    //数据处理界面
    {
      path:'/Main',
      component:() => import('../views/main/index.vue'),
      meta: {
        title: '首页'//meta中的标签用于匹配规则
      },
    },
    {
      path: '/Whole',
      component: () => import('../views/whole.vue'),
      meta: {
        title: '整体页面布局'
      },
      // 加chidren数组，作为子页面，二级放在1级下面，以此类推
      children: [
//数据标准说明界面
        {
          path:'/Home',
          component:() => import('../views/document/index.vue'),
          meta: {
            title: '数据标准说明'
          },
          redirect:'/Home/standard',     // 该配置是若点击选择父目录时，默认选中该父目录下的子路径页面
          children:[
            {
              path: 'standard',
              component: () => import('../views/document/standard.vue'),
              meta: {
                title: '相关文献资料'
              },
            },
            {
              path: 'description',
              component: () => import('../views/document/description.vue'),
              meta: {
                title: '数据说明资料'
              },
            },
          ]

        },

        //元数据管理
        {
          path: '/originaldata',
          component: () => import('../views/originaldata/index.vue'),
          meta: {
            title: '二级级菜单'
          },
          redirect:'/originaldata/test5-1',
              children:[
                {
                  path:'test5-1',
                  component: () => import('../views/originaldata/test5-1.vue'),
                  meta: {
                    title: '车辆异常数据'
                  }
                },
                {
                  path:'test5-2',
                  component: () => import('../views/originaldata/test5-2.vue'),
                  meta: {
                    title: '地区排名数据'
                  }
                },
                {
                  path:'test5-3',
                  component: () => import('../views/originaldata/test5-3.vue'),
                  meta: {
                    title: '运营商数据'
                  }
             },
                {
                  path:'test5-5',
                  component:()=>import('../views/originaldata/test5-5.vue'),
                  meta:{
                    title:'客运危运数据'
                  }
                },
            {
              path:'test5-4',
              component:()=>import('../views/originaldata/test5-4.vue'),
              meta:{
                title:'交通监控数据'
              }
            },
                {
                  path:'test5-8',
                  component:()=>import('../views/originaldata/test5-8.vue'),
                  meta:{
                    title:'高速公路数据'
                  }
                },
                {
                  path: 'test5-6',
                  component: () => import('../views/originaldata/test5-6.vue'),
                  meta: {
                    title: '企业安全数据'
                  }
                },
                {
                  path: 'test5-7',
                  component: () => import('../views/originaldata/test5-7.vue'),
                  meta: {
                    title: '多源数据介绍'
                  }
                }
          ]
        },


        //企业安全评估
        {
          path: '/test4',
          component: () => import('../views/test4/index.vue'),
          meta: {
            title: '一级菜单4'
          },
          redirect:'/test4/business',
          children:[
            {
              path: 'business',
              component: ()=> import('../views/test4/business.vue'),
              meta: {
                title: '企业安全评估'
              }
            },
            {
              path: 'test4-1',
              component: () => import('../views/test4/test4-1.vue'),
              meta: {
                title: '企业安全细则'
              }
            }
          ]
        },
        {
          path: '/test6',
          component: () => import('../views/test6'),
          meta: {
            title: '一级菜单5'
          },
          redirect:'/test6/test6-1',
          children:[
            {
              path: 'test6-1',
              component: ()=> import('../views/test6/test6-1.vue'),
              meta: {
                title: '企业异常报告数据'
              }
            },
            {
              path: 'test6-2',
              component: () => import('../views/test6/test6-2.vue'),
              meta: {
                title: '企业安全细则'
              }
            },
            {
              path: 'test6-3',
              component: () => import('../views/test6/test6-3.vue'),
              meta: {
                title: '客运'
              }
            },
            {
              path: 'test6-4',
              component: () => import('../views/test6/test6-4.vue'),
              meta: {
                title: '危运'
              }
            },
          ]
        },


 //数据统计界面
        {
          path: '/test2',
          component: () => import('../views/test2/index.vue'),
          meta: {
            title: '一级菜单2'
          },
          redirect:'/test2/test2-1',     // 该配置是若点击选择父目录时，默认选中该父目录下的子路径页面
          children:[
            {
              path: 'test2-1',
              component: () => import('../views/test2/test2-1.vue'),
              meta: {
                title: '车辆数据管理'
              },
            },
            {
              path: 'test2-2',
              component: () => import('../views/test2/test2-2.vue'),
              meta: {
                title: '二级菜单2-2'
              },
            },
            {
              path: 'test2-3',
              component: () => import('../views/test2/test2-3.vue'),
              meta: {
                title: '二级菜单2-3'
              },
            },
            {
              path:'/modify',
              component:() => import('../views/test2/modify.vue'),
              show:false
            },
          ]
        },


//数据应用服务界面
        {
          path: '/test3',
          component: () => import('../views/test3/index.vue'),
          meta: {
            title: '一级菜单3'
          },
          redirect:'/test3/test3-1',
          children:[
            {
              path: 'test3-1',
              component: () => import('../views/test3/test3-1.vue'),
              meta: {
                title: '二级菜单3-1'
              }
            },
            {
              path: 'test3-2',
              component: () => import('../views/test3/test3-2.vue'),
              meta: {
                title: '二级菜单3-2'
              }
              // show:true /false 控制是否遍历
            },
            //车辆视频实时监控
            {
              path: 'test3-3',
              component: () => import('../views/test3/test3-3.vue'),
              meta: {
                title: '二级菜单3-3'
              }
            },

            {
              path:'/detection',
              component: () => import('../views/test3/detection.vue'),
            },
          ]
        },


 // 权限页面
        {
          path: '/permission',
          component: () => import('../views/permission/index.vue'),
          meta: {
            title: '系统管理',
          },
          redirect:'/permission/people',
          children:[
            {path:'people',
              component:()=>import('../views/permission/people.vue'),
              meta:{
                title:'人员管理'
              }
            },
            {path:'diary',
              component:()=>import('../views/permission/diary.vue'),
              meta:{
                title:'日志管理'
              }
            },
            {path:'authority',
              component:()=>import('../views/permission/authority.vue'),
              meta:{
                title:'菜单权限管理'
              }
            },
          ]
        },


        {
          path: '/403',
          component: () => import('../views/403.vue'),
          meta: {
            title: '403'
          }
        },


        {
          path: '/404',
          component: () => import('../views/403.vue'),
          meta: {
            title: '404'
          }
        },
      ]
    },
    {
      path: '*',
      redirect: '/404'
    }
//实时监控界面
//     {
//       path: '/test3',
//       meta: {
//         title: '403'
//       },
//       component: () => import('../views/monitor.vue'),
//     }
  ]

});





//动态根据权限加，页面和可操作性不同
// export const DynamicRoutes =[
//   {
//     //使页面登录才能使用
//     requiresAuth:true
//
//   }
// ]
