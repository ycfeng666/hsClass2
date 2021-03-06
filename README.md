# 课程记录第二期

## ASP.NET

### 第一次实验

2022 年 3 月 7 日

#### 实验目的

1. 熟悉 ASP.NET 运行环境，掌握安装和配置 ASP.NET 开发环境的基本方法
2. 掌握 ASP.NET 页面设计开发流程
3. 掌握 Visual Studio 中开发并部署简单 ASP.NET 应用程序的方法

#### 实验内容

1. 使用 Visual Stuido 开发环境创建一个电子购物商城网站，名称为 NetShop，该网站中有一个 Web 窗体，其中输出“欢迎光临电子购物商城！”，并在 IIS 完成应用程序部署

   **略，无需演示**

2. 使用 Visual Stuido 开发环境创建一个简易的网页计算器，实现简单的加减乘除四则运算功能

![2022/03/08/420e80308100156.png](https://i.iluoli.moe/2022/03/08/420e80308100156.png)

**[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/asp/1/classWork/classWork2)**

<br/>

### 第二次实验

2022 年 3 月 16 日

#### 实验目的

1. 熟悉 ASP.NET 常用服务器控件，掌握各类 HTML 服务器控件和 Web 服务器控件的主要用法
2. 掌握 ASP.NET 验证控件的基本用法
3. 掌握 ASP.NET 用户控件的创建与使用方法

#### 实验内容

1. 设计一个用户注册页面，用户首先在用户注册页面输入用户名和密码，输入信息符合格式要求后，点击超链接进入个人信息页面完善个人信息，要求使用数据验证控件进行数据的有效验证

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/asp/2/classWork/classWork1)**

![2022/03/17/6a89b0317124225.png](https://i.iluoli.moe/2022/03/17/6a89b0317124225.png)
![2022/03/17/e4a340317124225.png](https://i.iluoli.moe/2022/03/17/e4a340317124225.png)
![2022/03/17/776a10317124225.png](https://i.iluoli.moe/2022/03/17/776a10317124225.png)

<br/>

2. 设计一个登录模块的用户控件，并将该用户控件添加至登录页面，实现显示当前用户名称和累计登录用户数量信息

   **（同上目录）**

![2022/03/17/2c8ad0317124226.png](https://i.iluoli.moe/2022/03/17/2c8ad0317124226.png)

### 第三次实验

2022 年 4 月 1 日

#### 实验目的

1. 熟悉 ASP.NET 常用内置对象，掌握各种 ASP.NET 内置对象的基本用法
2. 掌握 ASP.NET 内置对象常用集合、属性、方法或事件的有关

#### 实验内容

1. 设计一个“学生信息管理系统”的登录页面，当用户第一次登录输入用户名和密码，并选中“记住密码”复选框后，程序会将用户的用户名和密码存储到 Cookie 中。在用户以后登录时，当输入用户名后，程序会查找 Cookie 中是否存在该用户名，并获取相应的密码，从而实现用户密码的记忆功能

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/asp/3/classWork/classWork1)**

2. 设计一个简单的聊天室，要求
   1. 用户登录后，能够显示当前用户
   2. 能够选择文字显示颜色后发言

      **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/asp/3/classWork/classWork2)**

<br/>

### 第四次实验

#### 实验目的

1. 熟悉 ADO.NET 常用对象的主要用法，掌握服务器端数据访问空间的基本用法
2. 掌握基于 ADO.NET 的数据库访问技术，能够运用到 ASP.NET 应用系统的开发中

#### 实验内容

1. 创建一个图书信息表和一个 Web 应用程序，在页面中添加一个 GridView 控件，用来实现图书信息管理功能，包括对图书信息的分页浏览、选择、修改、删除与排序

<br/>

### 第五次实验

#### 实验目的

1. 熟悉 ASP.NET 的主题、母版页、站点导航等技术的使用，掌握创建具有统一风格和个性化网站的方法
2. 掌握主题的创建及使用的流程和方法
3. 掌握母版页的创建及使用的流程和方法

#### 实验内容

1. 利用主题和母版页等技术，设计一个网站的主页。在主页中，Banner（标题）和页尾两部分内容是公共部分，而其特有的内容是主页中间的内容显示部分（在内容部分显示当前时间）

<br/>

### 第六次实验

#### 实验目的

1. 熟悉 ASP.NET 设计和开发系统的流程和方法
2. 掌握使用 ASP.NET 进行程序开发的主要技术

#### 实验内容

设计和开发一个“图书信息管理系统”，系统的主要功能有：用户登录、检索图书信息、查看并删除图书、添加新的图书信息。要求：

1. 用 T-SQL 语言创建数据库 BookStore、数据表 book，数据表 book 用于保存图书详细信息，字段有：bookid（图书编号）、bookname（图书名称）、type（图书类型）、autor（作者）、pubname（出版社）、price（价格）、page（页码）
2. 使用三层架构搭建系统结构，将表示层放在 Web 窗体中，业务逻辑层、数据访问层和数据对象模型层用类库来实现
3. 合理划分页面结构。使用站点地图文件（web.sitemap）和导航控件（TreeView、SiteMapPath 等），实现系统的功能导航
4. 使用内置对象实现登录用户的信息显示和页面的跳转
5. 使用 GridView 控件设计图书查询页面，数据库访问时要使用异常处理机制
6. 实现图书信息的添加功能，合理使用验证控件验证用户的输入是否合法

<br/>

## JQuery

### 第一次实验

2022 年 3 月 15 日

#### 实验目的

1. 选择器的使用
2. 选择器方法
3. 常用方法：eq()，siblings()，index()，next()，prev()

#### 实验内容

1. 实现淘宝精品饰品效果，左侧是菜单，右侧是对应菜单内容，根据选择左侧不同菜单有相应内容切换

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/1/index.html)**

   ![2022/03/15/22a990315062106.png](https://i.iluoli.moe/2022/03/15/22a990315062106.png)

<br/>

### 第二次实验

2022 年 3 月 22 日

#### 实验目的

1. 掌握 JQ 操作 HTML 对象
2. 掌握 JQ 在网页中添加追加内容

#### 实验内容

1. 实验间隔几秒滚动显示新闻效果

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/2/index.html)**

   ![2022/03/22/281630322064133.png](https://i.iluoli.moe/2022/03/22/281630322064133.png)

   ![2022/03/22/b3b790322064133.png](https://i.iluoli.moe/2022/03/22/b3b790322064133.png)

<br/>

### 第三次实验

2022 年 3 月 29 日

#### 实验目的

1. 掌握 jQuery 管理 HTML 元素
2. 掌握 jQuery 删除 HTML 元素
3. 掌握 jQuery 替换 HTML 元素

#### 实验内容

1. 实现如下图效果手风琴菜单

   ![2022/03/29/e7cd90329012931.png](https://i.iluoli.moe/2022/03/29/e7cd90329012931.png)

   ![2022/03/29/df2f50329012931.png](https://i.iluoli.moe/2022/03/29/df2f50329012931.png)

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/3/index.html)**

2. 自动播放淘宝精品饰品效果-基于第一次实验

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/3/index2.html)**

<br/>

### 第四次实验

2022 年 4 月 12 日

#### 实验目的

1. 掌握 JQuery 常用方法
2. 掌握 JQuery 获取滚动条卷入距离方法
3. 掌握 JQuery 设置获取匹配对象的偏移量

#### 实验内容

1. 将前期实现页面整合成一个页面，要求要有滚动条，实现单击返回顶端效果（返回顶端初始为隐藏状态）

   ![](https://i.iluoli.moe/2022/04/13/e5d6a0413062900.png)

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/4/index.html)**

<br/>

### 第五次实验

2022 年 4 月 19 日

#### 实验目的

1. 掌握 ajax 异步获取数据
2. 掌握常用 load()方法，get()方法，ajax()方法的使用

#### 实验内容

1. 使用 ajax 实现如图个人博客发帖功能

   ![](https://i.iluoli.moe/2022/04/13/f450b0413074331.png)

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/5/index.html)**

<br/>

### 第六次实验

2022 年 5 月 3 日

#### 实验目的

1. 掌握淡入淡出动画
2. 滑动变化效果
3. fadeTo 方法，hover 方法的使用

#### 实验内容

1. 右图中的图片能自动播放，对应左边大图，鼠标悬挂在左图时在下面添加说明文档

   ![](https://i.iluoli.moe/2022/05/17/cf8fe0517042734.png)

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/6/index.html)**

<br/>

### 第七次实验

#### 实验目的

1. 掌握几种常用的 jquery 自定义动画效果
2. 掌握常用 dalay()，stop()，animate()方法的使用
3. 使用 jquery 动画的自定义动画实现手风琴效果

#### 实验内容

1. 实现下图所示的手风琴特效

   ![](https://i.iluoli.moe/2022/05/17/8b5bd0517042937.png)

   ![](https://i.iluoli.moe/2022/05/17/5a1670517043003.png)

   ![](https://i.iluoli.moe/2022/05/17/25f2a0517043043.png)

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/7/index.html)**

<br/>

### 第八次实验

#### 实验目的

1. 加深掌握 animate()方法的使用
2. 提高 jquery 综合方式的使用能力
3. 掌握实现 jquery 轮播图的效果

#### 实验内容

1. 实现书例题星级评价

   ![](https://i.iluoli.moe/2022/05/17/2d5290517043341.png)

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/8/index3.html)**

2. 实现如下轮播图

   ![](https://i.iluoli.moe/2022/05/17/93de30517043217.png)

   ![](https://i.iluoli.moe/2022/05/17/711f10517043253.png)

   **[参考代码 1](https://github.com/ycfeng666/hsClass2/tree/main/jq/8/index.html)**

   **[参考代码 2](https://github.com/ycfeng666/hsClass2/tree/main/jq/8/index2.html)**

   <br/>

### 第一次支线实验

2022 年 3 月 30 日

#### 实验目的

1. 无目的

#### 实验内容

1. 实验类似淘宝点击菜单切换下方内容（见实验 4 演示图末尾部分）

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/4/index.html)**

## Vue

### 第一次实验

2022 年 3 月 10 日

#### 实验目的

1. 开发环境的搭建，开发调试工具的使用及项目创建
2. Vue 项目的基本结构

#### 实验内容

本次实验为环境搭建，无代码，内容省略

---

1. node 环境下进行 Vue 的下载安装引用
2. 创建一个 demo，编写 Hello 实例
3. 使用 npm 安装 vue/cli 脚手架工具，并初始化一个项目

<br/>

### 第二次实验

2022 年 3 月 17 日

#### 实验目的

1. 熟悉 Vue 实例对象的使用，Vue 的事件监听操作和 Vue 组件
2. 掌握 Vue 自定义组件创建和使用方法

#### 实验内容

1. 请实现一个比较两个数字大小的页面。要求：页面展示两个输入框，允许用户随机输入两个数字 val1， val2，下方展示较大的数字

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/2/1.html)**

   ![2022/03/23/673bf0323023758.png](https://i.iluoli.moe/2022/03/23/673bf0323023758.png)

2. 请实现一个简单的网页计算器。要求：页面展示简单计算器页面，即 10 个数字按键和二位操作运算符+， -，\*，/，=。要求实现多个数字的计算操作

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/2/2.html)**

   ![2022/03/23/6c9de0323023758.png](https://i.iluoli.moe/2022/03/23/6c9de0323023758.png)

<br/>

### 第三次实验

2022 年 3 月 24 日

#### 实验目的

1. 熟悉 Vue 实例对象的使用，Vue 的事件监听操作和 Vue 组件使用方法
2. 掌握 Vue 自定义组件创建和使用方法

#### 实验内容

1. 请使用插槽 vm.$slots 动手实现一个导航栏结构。要求：在子组件中实现导航栏的布局，调用组件时传递导航栏的内容

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/3/1.html)**

   ![2022/03/23/ffdef0323040641.png](https://i.iluoli.moe/2022/03/23/ffdef0323040641.png)

2. 请创建一个自定义插件，实现一个登录页面。要求：在 VUE 实例中引入自定义插件，插件中实现登陆页面的布局。时间充裕可以再添加登录逻辑

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/3/1.html)**

   ![2022/03/23/3996c0323040641.png](https://i.iluoli.moe/2022/03/23/3996c0323040641.png)

<br/>

### 第四次实验

2022 年 3 月 31 日

#### 实验目的

1. 熟悉 transition 组件的使用，以及内置的 CSS 类名、自定义类名、animate.css 实现过渡动画的方法
2. 掌握使用多个组件过渡和列表过渡的方法

#### 实验内容

1. 编写一个登录页面，使用 Tab 栏实现“账号登录”和“二维码登录”这两种方式的切换，并通过 transition 组件实现切换时的动画效果

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/4/1.html)**

   ![](https://i.iluoli.moe/2022/04/01/ca4570401011140.png)

2. 实现单击一个按钮后，切换盒子的展开和收起状态

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/4/2.html)**

   ![](https://i.iluoli.moe/2022/04/01/784420401011340.png)

<br/>

### 第五次实验

2022 年 4 月 7 日

#### 实验目的

1. 熟悉 transition 组件的使用，以及内置的 CSS 类名、自定义类名、animate.css 实现过渡动画的方法
2. 掌握使用多个组件过渡和列表过渡的方法

#### 实验内容

1. 利用 transition-group 组件实现电子商城中广告图片的轮播效果。运行程序，要求实现： （1）页面中显示的广告图片会进行轮播
2. 鼠标指向图片下方的某个数字按钮时会过渡显示对应的图片

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/5/index.html)**

   ![](https://i.iluoli.moe/2022/04/07/7ce2c0407042952.png)

<br/>

### 第六次实验

2022 年 4 月 14 日

#### 实验目的

1. 熟悉路由的基本概念，以及 vue-router 插件的基本使用
2. 掌握动态路由以及两种传参方式的使用

#### 实验内容

1. 请使用 Vue 路由相关知识实现用户列表的展示（用户信息可自己构造），点击用户名称，进入该用户的个人中心页面展示“\*\*的个人中心”，该页面有三个链接，待付款，待发货，待收货，点击之后分别展示“待付款商品信息”， “待发货商品信息”， “待收货商品信息”。

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/6/index.html)**

   ![](https://i.iluoli.moe/2022/04/14/6e5860414095228.png)

   ![](https://i.iluoli.moe/2022/04/14/9d9210414095247.png)

<br/>

### 第七次实验

2022 年 4 月 21 日

#### 实验目的

1. 熟悉路由的基本概念，以及 vue-router 插件的基本使用
2. 掌握基于 vue-router 的项目基本架构和构建方法

#### 实验内容

1. 在实验六的基础上进一步应用嵌套路由实现文字选项卡和内容的切换。页面中有“音乐”、“电影”和“新闻”3 个类别选项卡，单击不同选项卡下的子栏目可以显示对应的内容，结果如图 1、图 2 所示

   **[参考代码 1](https://github.com/ycfeng666/hsClass2/tree/main/vue/7/index.html)**

   **[参考代码 2](https://github.com/ycfeng666/hsClass2/tree/main/vue/7/routes.js)**

   ![](https://i.iluoli.moe/2022/04/22/deabd0422012353.png)

<br/>

### 第八次实验

2022 年 4 月 28 日

#### 实验目的

1. 熟悉 vuex 组件状态管理，vuex 的基本特性和 store 实例方法的使用
2. 掌握 vuex 中的 mutations 状态提交与 actions 状态分完成组件状态变化的方法

#### 实验内容

1. 实现列表的增删改查

   **[参考代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/8/App.vue)**

   ![](https://i.iluoli.moe/2022/04/29/8698e0429105205.png)
