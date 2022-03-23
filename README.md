# 课程记录第二期

## ASP.NET

### 第一次实验

2022年3月7日

#### 实验目的

1. 熟悉ASP.NET运行环境，掌握安装和配置ASP.NET开发环境的基本方法
2. 掌握ASP.NET页面设计开发流程
3. 掌握Visual Studio中开发并部署简单ASP.NET应用程序的方法

#### 实验内容

1. 使用Visual Stuido开发环境创建一个电子购物商城网站，名称为NetShop，该网站中有一个Web窗体，其中输出“欢迎光临电子购物商城！”，并在IIS完成应用程序部署
   
   **略，无需演示**
2. 使用Visual Stuido开发环境创建一个简易的网页计算器，实现简单的加减乘除四则运算功能

  ![2022/03/08/420e80308100156.png](https://i.iluoli.moe/2022/03/08/420e80308100156.png)

**[点击跳转至代码目录](https://github.com/ycfeng666/hsClass2/tree/main/asp/1/classWork/classWork2)**

<br/>

### 第二次实验

2022年3月16日

#### 实验目的

1. 熟悉ASP.NET常用服务器控件，掌握各类HTML服务器控件和Web服务器控件的主要用法
2. 掌握ASP.NET验证控件的基本用法
3. 掌握ASP.NET用户控件的创建与使用方法

#### 实验内容

1. 设计一个用户注册页面，用户首先在用户注册页面输入用户名和密码，输入信息符合格式要求后，点击超链接进入个人信息页面完善个人信息，要求使用数据验证控件进行数据的有效验证
   
   **[点击跳转至代码目录](https://github.com/ycfeng666/hsClass2/tree/main/asp/2/classWork/classWork1)**

![2022/03/17/6a89b0317124225.png](https://i.iluoli.moe/2022/03/17/6a89b0317124225.png)
![2022/03/17/e4a340317124225.png](https://i.iluoli.moe/2022/03/17/e4a340317124225.png)
![2022/03/17/776a10317124225.png](https://i.iluoli.moe/2022/03/17/776a10317124225.png)

<br/>

2. 设计一个登录模块的用户控件，并将该用户控件添加至登录页面，实现显示当前用户名称和累计登录用户数量信息
   
   **（同上目录）**

![2022/03/17/2c8ad0317124226.png](https://i.iluoli.moe/2022/03/17/2c8ad0317124226.png)

<br/>

## JQuery

### 第一次实验

2022年3月15日

#### 实验目的

1. 选择器的使用
2. 选择器方法
3. 常用方法：eq()，siblings()，index()，next()，prev()

#### 实验内容

1. 实现淘宝精品饰品效果，左侧是菜单，右侧是对应菜单内容，根据选择左侧不同菜单有相应内容切换
   
   **[点击跳转至代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/1/index.html)**
   
   ![2022/03/15/22a990315062106.png](https://i.iluoli.moe/2022/03/15/22a990315062106.png)

<br/>

### 第二次实验

2022年3月22日

#### 实验目的

1. 掌握JQ操作HTML对象
2. 掌握JQ在网页中添加追加内容

#### 实验内容

1. 实验间隔几秒滚动显示新闻效果
   
      **[点击跳转至代码](https://github.com/ycfeng666/hsClass2/tree/main/jq/2/index.html)**
   
   ![2022/03/22/281630322064133.png](https://i.iluoli.moe/2022/03/22/281630322064133.png)
   
   ![2022/03/22/b3b790322064133.png](https://i.iluoli.moe/2022/03/22/b3b790322064133.png)

<br/>

## Vue

### 第一次实验

2022年3月10日

#### 实验目的

1. 开发环境的搭建，开发调试工具的使用及项目创建
2. Vue项目的基本结构

#### 实验内容

本次实验为环境搭建，无代码，内容省略

***

1. node环境下进行Vue的下载安装引用
2. 创建一个demo，编写Hello实例
3. 使用npm安装vue/cli脚手架工具，并初始化一个项目

<br/>

### 第二次实验

2022年3月17日

#### 实验目的

1. 熟悉Vue实例对象的使用，Vue的事件监听操作和Vue组件
2. 掌握Vue自定义组件创建和使用方法

#### 实验内容

1. 请实现一个比较两个数字大小的页面。要求：页面展示两个输入框，允许用户随机输入两个数字val1， val2，下方展示较大的数字
   
      **[点击跳转至代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/2/1.html)**
   
   ![2022/03/23/673bf0323023758.png](https://i.iluoli.moe/2022/03/23/673bf0323023758.png)
2. 请实现一个简单的网页计算器。要求：页面展示简单计算器页面，即10个数字按键和二位操作运算符+， -，*，/，=。要求实现多个数字的计算操作
   
      **[点击跳转至代码](https://github.com/ycfeng666/hsClass2/tree/main/vue/2/2.html)**
   
   ![2022/03/23/6c9de0323023758.png](https://i.iluoli.moe/2022/03/23/6c9de0323023758.png)

<br/>

### 第三次实验

2022年3月24日

#### 实验目的

1. 熟悉Vue实例对象的使用，Vue的事件监听操作和Vue组件使用方法
2. 掌握Vue自定义组件创建和使用方法

#### 实验内容

1. 请使用插槽vm.$slots动手实现一个导航栏结构。要求：在子组件中实现导航栏的布局，调用组件时传递导航栏的内容
2. 请创建一个自定义插件，实现一个登录页面。要求：在VUE实例中引入自定义插件，插件中实现登陆页面的布局。时间充裕可以再添加登录逻辑
