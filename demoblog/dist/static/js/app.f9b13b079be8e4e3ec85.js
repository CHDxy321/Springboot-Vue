webpackJsonp([39],{0:function(t,e){},"5LIk":function(t,e){},"75l9":function(t,e){t.exports={name:"axios",version:"0.21.4",description:"Promise based HTTP client for the browser and node.js",main:"index.js",scripts:{test:"grunt test",start:"node ./sandbox/server.js",build:"NODE_ENV=production grunt build",preversion:"npm test",version:"npm run build && grunt version && git add -A dist && git add CHANGELOG.md bower.json package.json",postversion:"git push && git push --tags",examples:"node ./examples/server.js",coveralls:"cat coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js",fix:"eslint --fix lib/**/*.js"},repository:{type:"git",url:"https://github.com/axios/axios.git"},keywords:["xhr","http","ajax","promise","node"],author:"Matt Zabriskie",license:"MIT",bugs:{url:"https://github.com/axios/axios/issues"},homepage:"https://axios-http.com",devDependencies:{coveralls:"^3.0.0","es6-promise":"^4.2.4",grunt:"^1.3.0","grunt-banner":"^0.6.0","grunt-cli":"^1.2.0","grunt-contrib-clean":"^1.1.0","grunt-contrib-watch":"^1.0.0","grunt-eslint":"^23.0.0","grunt-karma":"^4.0.0","grunt-mocha-test":"^0.13.3","grunt-ts":"^6.0.0-beta.19","grunt-webpack":"^4.0.2","istanbul-instrumenter-loader":"^1.0.0","jasmine-core":"^2.4.1",karma:"^6.3.2","karma-chrome-launcher":"^3.1.0","karma-firefox-launcher":"^2.1.0","karma-jasmine":"^1.1.1","karma-jasmine-ajax":"^0.1.13","karma-safari-launcher":"^1.0.0","karma-sauce-launcher":"^4.3.6","karma-sinon":"^1.0.5","karma-sourcemap-loader":"^0.3.8","karma-webpack":"^4.0.2","load-grunt-tasks":"^3.5.2",minimist:"^1.2.0",mocha:"^8.2.1",sinon:"^4.5.0","terser-webpack-plugin":"^4.2.3",typescript:"^4.0.5","url-search-params":"^0.10.0",webpack:"^4.44.2","webpack-dev-server":"^3.11.0"},browser:{"./lib/adapters/http.js":"./lib/adapters/xhr.js"},jsdelivr:"dist/axios.min.js",unpkg:"dist/axios.min.js",typings:"./index.d.ts",dependencies:{"follow-redirects":"^1.14.0"},bundlesize:[{path:"./dist/axios.min.js",threshold:"5kB"}]}},IbEF:function(t,e){},NHnr:function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=n("7+uW"),r={render:function(){var t=this.$createElement,e=this._self._c||t;return e("div",{attrs:{id:"app"}},[e("router-view")],1)},staticRenderFns:[]};var o=n("VU/8")({name:"App"},r,!1,function(t){n("IbEF")},null,null).exports,a=n("/ocq");i.default.use(a.a);var l=new a.a({routes:[{path:"/",component:function(){return n.e(11).then(n.bind(null,"Quw4"))}},{path:"/content",component:function(){return n.e(27).then(n.bind(null,"Aou8"))}},{path:"/Main",component:function(){return n.e(2).then(n.bind(null,"jw7m"))},meta:{title:"首页"}},{path:"/Whole",component:function(){return n.e(5).then(n.bind(null,"vYky"))},meta:{title:"整体页面布局"},children:[{path:"/Home",component:function(){return Promise.all([n.e(0),n.e(8)]).then(n.bind(null,"UYHc"))},meta:{title:"数据标准说明"},redirect:"/Home/standard",children:[{path:"standard",component:function(){return n.e(14).then(n.bind(null,"GMfu"))},meta:{title:"相关文献资料"}},{path:"description",component:function(){return n.e(35).then(n.bind(null,"IcY/"))},meta:{title:"数据说明资料"}}]},{path:"/originaldata",component:function(){return Promise.all([n.e(0),n.e(26)]).then(n.bind(null,"rqV8"))},meta:{title:"二级级菜单"},redirect:"/originaldata/test5-1",children:[{path:"test5-1",component:function(){return n.e(31).then(n.bind(null,"ZZ4J"))},meta:{title:"车辆异常数据"}},{path:"test5-2",component:function(){return n.e(30).then(n.bind(null,"wdfK"))},meta:{title:"地区排名数据"}},{path:"test5-3",component:function(){return n.e(9).then(n.bind(null,"IqZA"))},meta:{title:"运营商数据"}},{path:"test5-5",component:function(){return n.e(17).then(n.bind(null,"qsR1"))},meta:{title:"客运危运数据"}},{path:"test5-4",component:function(){return n.e(16).then(n.bind(null,"KVUO"))},meta:{title:"交通监控数据"}},{path:"test5-6",component:function(){return n.e(23).then(n.bind(null,"IZM3"))},meta:{title:"企业安全数据"}},{path:"test5-7",component:function(){return n.e(34).then(n.bind(null,"10oZ"))},meta:{title:"多源数据介绍"}}]},{path:"/test4",component:function(){return Promise.all([n.e(0),n.e(22)]).then(n.bind(null,"c8C0"))},meta:{title:"一级菜单4"},redirect:"/test4/business",children:[{path:"business",component:function(){return n.e(25).then(n.bind(null,"3qz9"))},meta:{title:"企业安全评估"}},{path:"test4-1",component:function(){return n.e(10).then(n.bind(null,"ggXb"))},meta:{title:"企业安全细则"}}]},{path:"/test6",component:function(){return Promise.all([n.e(0),n.e(12)]).then(n.bind(null,"M0j7"))},meta:{title:"一级菜单5"},redirect:"/test6/test6-1",children:[{path:"test6-1",component:function(){return n.e(24).then(n.bind(null,"baqK"))},meta:{title:"企业异常报告数据"}},{path:"test6-2",component:function(){return n.e(36).then(n.bind(null,"XWQJ"))},meta:{title:"企业安全细则"}}]},{path:"/test2",component:function(){return Promise.all([n.e(0),n.e(19)]).then(n.bind(null,"12EW"))},meta:{title:"一级菜单2"},redirect:"/test2/test2-1",children:[{path:"test2-1",component:function(){return n.e(32).then(n.bind(null,"G1oP"))},meta:{title:"车辆数据管理"}},{path:"test2-2",component:function(){return n.e(7).then(n.bind(null,"YdSf"))},meta:{title:"二级菜单2-2"}},{path:"test2-3",component:function(){return n.e(6).then(n.bind(null,"zWLf"))},meta:{title:"二级菜单2-3"}},{path:"/modify",component:function(){return n.e(37).then(n.bind(null,"snpW"))},show:!1}]},{path:"/test3",component:function(){return Promise.all([n.e(0),n.e(15)]).then(n.bind(null,"Yiba"))},meta:{title:"一级菜单3"},redirect:"/test3/test3-1",children:[{path:"test3-1",component:function(){return n.e(3).then(n.bind(null,"p4Cu"))},meta:{title:"二级菜单3-1"}},{path:"test3-2",component:function(){return n.e(13).then(n.bind(null,"L0gT"))},meta:{title:"二级菜单3-2"}},{path:"test3-3",component:function(){return n.e(28).then(n.bind(null,"zgDP"))},meta:{title:"二级菜单3-3"}},{path:"test3-4",component:function(){return n.e(20).then(n.bind(null,"rYyG"))},meta:{title:"二级菜单3-4"}},{path:"/detection",component:function(){return n.e(4).then(n.bind(null,"JUgI"))}}]},{path:"/permission",component:function(){return Promise.all([n.e(0),n.e(29)]).then(n.bind(null,"V9V6"))},meta:{title:"系统管理"},redirect:"/permission/people",children:[{path:"people",component:function(){return n.e(21).then(n.bind(null,"AsvB"))},meta:{title:"人员管理"}},{path:"diary",component:function(){return n.e(33).then(n.bind(null,"m3Ms"))},meta:{title:"日志管理"}},{path:"authority",component:function(){return n.e(18).then(n.bind(null,"Bz9Y"))},meta:{title:"菜单权限管理"}}]},{path:"/403",component:function(){return n.e(1).then(n.bind(null,"k6uz"))},meta:{title:"403"}},{path:"/404",component:function(){return n.e(1).then(n.bind(null,"k6uz"))},meta:{title:"404"}}]},{path:"*",redirect:"/404"}]}),u=n("zL8q"),s=n.n(u),c=(n("tvR6"),n("mtWM")),p=n.n(c),m=n("XLwt"),d=n("63pp"),h=(n("g3Gj"),n("iqGf")),b=n.n(h);n("5LIk");i.default.prototype.$axios=p.a,i.default.use(b.a),i.default.prototype.$video=d.a,i.default.prototype.$Echarts=m,i.default.use(s.a),i.default.prototype.$axios=p.a,i.default.config.productionTip=!1,new i.default({el:"#app",router:l,components:{App:o},template:"<App/>"})},g3Gj:function(t,e){},tvR6:function(t,e){}},["NHnr"]);
//# sourceMappingURL=app.f9b13b079be8e4e3ec85.js.map