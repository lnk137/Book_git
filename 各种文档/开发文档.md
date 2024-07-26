
# 开发文档

## 功能介绍

系统分为后台和前台两部分。

后台的主要功能：

- 图书管理：管理系统可以录入、修改和查询图书的基本信息，如图书名称、简介、备注等。
- 类型管理：系统可以管理图书的类型信息，包括类型的名称等。
- 标签管理：管理标签录入、修改和查询标签的信息。
- 评论管理：管理和浏览整个网站的评论信息。
- 借阅管理：管理和浏览整个网站的借阅信息。
- 用户管理：管理和浏览网站的用户信息，可以新增、编辑和删除用户。
- 统计分析：系统可以根据图书的活动数据和会员参与度进行统计和分析，帮助管理员了解整个系统的状况。
- 消息管理：图书管理员可以在系统上发布消息，整个网站的用户都能收到。
- 系统信息：管理员可以查看系统的基本信息，包括系统名称、服务器信息、内存信息、cpu信息、软件信息等。

前台的主要功能：

- 注册登录：用户通过注册和登录后，才能使用网站。
- 门户浏览：用户进入首页后，可以浏览图书列表信息，包括最新、最热、推荐。
- 智能推荐：详情页右侧的热门推荐。
- 用户中心：包括用户基本资料修改、用户邮箱推送、消息。
- 我的借阅：包括我借阅的图书的信息。
- 模糊搜索：顶部搜索功能，支持模糊搜索图书信息。
- 图书评论：详情页下侧用户可以评论图书。

## 开发环境

- 后端： Python 3.8 + Django 3.2
- 前端： Javascript + Vue
- 数据库：MySQL 5.7
- 开发平台：Pycharm + vscode
- 运行环境：Windows 10/11

## 关键技术

- 前端技术栈 ES6、vue、vuex、vue-router、vue-cli、axios、antd
- 后端技术栈 Python、Django、pip

### 后端技术

#### django框架

Django是一款基于Python开发的全栈式一体化Web应用框架。2003年问世之初，它只是美国一家报社的内部工具，2005年7月使用BSD许可证完成了开源。Django采用MTV设计模式，即Model（模型）+ Template（模板）+ View（视图）。它遵循MVC设计，并且内置了对象关系映射（ORM）层，使得开发者无需关心底层的数据存取细节，可以更专注于业务逻辑的开发。

Django的目的是削减代码量，简单且迅速地搭建以数据库为主体的复杂Web站点。它是全栈式框架，因此安装起来很简单，而且使用者众多。这使得Django除具有完备的官方文档之外，还有大量的关联文档、丰富的第三方库可供使用。与其他框架相比，Django用起来要轻松得多。

优点：
- 提供了定义序列化器Serializer的方法。可以快速根据Django ORM或者其他库自动序列化或反序列化。
- 提供了丰富的类视图MIXIN扩展类。可以简化视图的编写。
- 具有丰富的定制层级。包括函数视图、类视图，还可以将视图与自动生成API结合，满足各种需求。
- 支持多种身份认证和权限认证方式。
- 内置了限流系统。

### 前端技术

- npm：node.js的包管理工具，用于统一管理我们前端项目中需要用到的包、插件、工具、命令等，便于开发和维护。
- ES6：Javascript的新版本，ECMAScript6的简称。利用ES6我们可以简化我们的JS代码，同时利用其提供的强大功能来快速实现JS逻辑。
- vue-cli：Vue的脚手架工具，用于自动生成Vue项目的目录及文件。
- vue-router： Vue提供的前端路由工具，利用其我们实现页面的路由控制，局部刷新及按需加载，构建单页应用，实现前后端分离。
- vuex：Vue提供的状态管理工具，用于统一管理我们项目中各种数据的交互和重用，存储我们需要用到数据对象。
- Ant-design：基于MVVM框架Vue开源出来的一套前端ui组件。

## 运行步骤

### 后端运行步骤

(1) 安装mysql数据库，启动服务

(2) 打开cmd命令行，进入mysql，并新建数据库
```
mysql -u root -p
CREATE DATABASE IF NOT EXISTS python_book DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
```

(3) 恢复sql数据
```
use xxx
source xxxx.sql
```
(4) 修改settings.py中的配置信息

(5) 安装python 3.8

(6) 安装依赖包
```
pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple
```
(7) 运行命令
```
python manage.py runserver 
```


### 前端运行步骤

(1) 安装node 16

(2) cmd进入web目录下，安装依赖，执行:
```
npm install 
```
(3) 运行项目
```
npm run serve
```

## 代码结构

### 后端结构

```
bookproject  
├── myapp            // 主应用
│       └── auth                     // 认证管理
│       └── middlewares              // 中间件
│       └── permission               // 权限
│       └── views                    // 视图与接口（主要业务代码）
│       └── models.py                // 状态码
│       └── serializers.py           // 状态码
│       └── urls.py                  // 状态码
│       └── utils.py                 // 状态码
├── entity             // 实体类
├── interceptor        // 拦截器
├── mapper             // 数据库映射
├── bookproject        // 配置目录
├── upload             // 静态资源目录
├── requiements.txt    // 依赖项
```

### 前端结构

```
├── build                      // 构建相关  
├── public                     // 公共文件
│   ├── favicon.ico            // favicon图标
│   └── index.html             // html模板
├── src                        // 源代码
│   ├── api                    // 所有请求
│   ├── assets                 // 主题 字体等静态资源
│   ├── router                 // 路由
│   ├── store                  // 全局 store管理
│   ├── utils                  // 全局公用方法
│   ├── views                  // view界面
│   ├── App.vue                // 入口页面
│   ├── main.js                // 入口 加载组件 初始化等
│   └── settings.js            // 系统配置
├── .eslintignore              // 忽略语法检查
├── .eslintrc.js               // eslint 配置项
├── .gitignore                 // git 忽略项
├── babel.config.js            // babel.config.js
├── package.json               // package.json
└── vite.config.js             // vue配置
```

## 数据库设计

### 需求分析

在图书管理系统中，需要存储和管理图书信息、评论信息、分类信息、标签信息、用户信息、通知信息、日志信息。

实体设计如下：
- 图书(thing)
- 分类(classification)
- 标签(tag)
- 用户(user)
- 评价(comment)
- 日志(log)
- 通知(notice)

关系如下：
- 一个图书有一个分类
- 一个分类可以对应多个图书
- 一个图书有多个标签
- 一个标签可以对应多个图书

数据表设计如下：

```
// 图书表
Table book {
    book_id int [pk]
    classification_id int [ref: > C.classification_id]
    tag_id int [ref: <> tag.tag_id]
    title varchar
    original_title varchar
    cover varchar
    author varchar
    translator varchar
    press varchar
    page_count int
    price varchar
    isbn varchar
    pub_date varchar
    online_time varchar
    status int
    repertory int
    score varchar
    layout varchar
    description text
    create_time datetime
    pv int
    wish_count int
    recommend_count int
    wish int [ref: <> user.user_id]
    collect int [ref: <> user.user_id]
 }
 // 图书分类
 Table classification as C {
   classification_id int [pk]
   pid int
   title varchar
   create_time datetime
 }
 // 标签
 Table tag {
   tag_id int [pk]
   title varchar
   create_time datetime
 }
 // 评论表
 Table comment {
   comment_id int [pk]
   content varchar
   user_id int [ref: > user.user_id]
   book_id int [ref: > book.book_id]
   comment_time datetime
   like_count int
 }
 // 用户表
 Table user {
   user_id int [pk]
   role varchar // 1管理员 2普通用户 3演示帐号
   status int // 0正常 1封号
   username varchar
   password varchar
   nickname varchar
   avatar varchar
   description varchar
   wish int [ref: <> book.book_id]
   email varchar
   mobile varchar
   score int // 积分
   push_email varchar // 推送邮箱
   push_switch int  // 推送开关
   token varchar
   admin_token varchar
 }
 
 
 // 登录日志
 Table login_log {
   log_id int [pk]
   username varchar
   ip varchar
   log_time datetime
 }
 
 // 操作日志
 Table op_log {
   id int [pk]
   re_ip varchar
   re_time datetime
   re_url varchar
   re_method varchar
   re_content varchar
   access_time varchar
 }
 
 // 异常日志
 Table error_log {
   id int [pk]
   ip varchar
   method varchar
   content varchar
   log_time varchar
 }
 // 借阅表
 Table borrow {
   borrow_id int [pk]
   user_id int [ref: > user.user_id]
   book_id int [ref: > book.book_id]
   status varchar // 1借出 2已还
   borrow_time datetime
   expect_time datetime // 应还时间
   delayed boolean // 是否点击延期了 1已延期
 }
 
 
 
 
 // 通知
 Table notice {
   id int [pk]
   content varchar
   create_time datetime
 }
 
 
  Table address {
   address_id int [pk]
   user_id int [ref: > user.user_id]
   address_content varchar
   default int  // 是否默认地址
   create_time datetime
 }
 
```
## 开发过程


无论是图书管理、用户管理、标签管理、分类管理、评价管理、日志管理、消息管理等功能都是基于springboot+vue框架开发的，开发流程是：

- 第一步：编写实体
- 第二步：编写序列化层
- 第三步：编写views层
- 第四步：编写界面和API

下面用图书管理功能来演绎这个流程，其它的管理功能都是这个流程。

第一步：编写实体类

在bookproject下的myapp下的models.py下面新建Thing类。并写入如下代码：

```
class Thing(models.Model):
    STATUS_CHOICES = (
        ('0', '上架'),
        ('1', '下架'),
    )
    id = models.BigAutoField(primary_key=True)
    classification = models.ForeignKey(Classification, on_delete=models.CASCADE, blank=True, null=True,
                                       related_name='classification_thing')
    tag = models.ManyToManyField(Tag, blank=True)
    title = models.CharField(max_length=100, blank=True, null=True)
    cover = models.ImageField(upload_to='cover/', null=True)
    description = models.TextField(max_length=1000, blank=True, null=True)
    price = models.CharField(max_length=50, blank=True, null=True) 
    mobile = models.CharField(max_length=50, blank=True, null=True)
    age = models.CharField(max_length=10, blank=True, null=True) 
    location = models.CharField(max_length=50, blank=True, null=True) 
    status = models.CharField(max_length=1, choices=STATUS_CHOICES, default='0')
    create_time = models.DateTimeField(auto_now_add=True, null=True)
    pv = models.IntegerField(default=0)
    recommend_count = models.IntegerField(default=0)
    wish = models.ManyToManyField(User, blank=True, related_name="wish_things")
    wish_count = models.IntegerField(default=0)
    collect = models.ManyToManyField(User, blank=True, related_name="collect_things")
    collect_count = models.IntegerField(default=0)

    class Meta:
            db_table = "b_thing"
```

第二步：编写序列化层

在bookproject下的myapp下的serializers.py下新建ThingSerializer类，并写入代码：

```
class ThingSerializer(serializers.ModelSerializer):
    # 额外字段
    classification_title = serializers.ReadOnlyField(source='classification.title')

    class Meta:
        model = Thing
        fields = '__all__'

```

第三步：编写views层

在bookproject的myapp下的views下，新建Thing.py代码，并写入代码，实现增删改查

```

# 查
@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        keyword = request.GET.get("keyword", None)
        c = request.GET.get("c", None)
        tag = request.GET.get("tag", None)
        if keyword:
            things = Thing.objects.filter(title__contains=keyword).order_by('create_time')
        elif c:
            classification = Classification.objects.get(pk=c)
            things = classification.classification_thing.all()
        elif tag:
            tag = Tag.objects.get(id=tag)
            print(tag)
            things = tag.thing_set.all()
        else:
            things = Thing.objects.all().order_by('create_time')

        serializer = ThingSerializer(things, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 删
@api_view(['GET'])
def detail(request):

    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
    except Thing.DoesNotExist:
        utils.log_error(request, '对象不存在')
        return APIResponse(code=1, msg='对象不存在')

    if request.method == 'GET':
        serializer = ThingSerializer(thing)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)

# 增
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def create(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    serializer = ThingSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='创建失败')

# 改
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def update(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
    except Thing.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    serializer = UpdateThingSerializer(thing, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='查询成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='更新失败')

# 删
@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):

    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')
        ids_arr = ids.split(',')
        Thing.objects.filter(id__in=ids_arr).delete()
    except Thing.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')
    return APIResponse(code=0, msg='删除成功')


```

然后将该接口添加到urls.py中即可。

第四步：编写界面和API

打开前端web工程，在views文件夹下新建book.vue文件，并编写代码：

```
<template>
  <div class="page-view">
    <div class="table-operation">
      <a-space>
        <a-button type="primary" @click="handleAdd">新增</a-button>
        <a-button @click="handleBatchDelete">批量删除</a-button>
        <a-input-search addon-before="书名" enter-button @search="onSearch" @change="onSearchChange" />
      </a-space>
    </div>
    <div class="table-wrap" ref="tableWrap">
      <a-table
        size="middle"
        rowKey="id"
        :loading="loading"
        :columns="columns"
        :data-source="data"
        :scroll="{ x: 'max-content' }"
        :row-selection="rowSelection()"
        :pagination="{
          size: 'default',
          current: page,
          pageSize: pageSize,
          onChange: (current) => page = current,
          pageSizeOptions: ['10', '20', '30', '40'],
          showSizeChanger: true,
          showTotal: (total) => `共${total}条数据`
        }"
      >
<!--        <span slot="cover" slot-scope="text">-->
<!--          <img :src="text" style="width: 40px;height: 60px;"/>-->
<!--        </span>-->
        <span slot="operation" class="operation" slot-scope="text, record">
          <a-space :size="16">
            <a @click="handleEdit(record)">编辑</a>
            <a @click="handleDelete(record)">删除</a>
          </a-space>
        </span>
      </a-table>
    </div>
  </div>
</template>

<script>
import {listApi, deleteApi, createApi} from '@/api/admin/book'
import EditBook from '@/views/admin/model/edit-book'

const columns = [
  {
    title: '序号',
    dataIndex: 'index',
    key: 'index',
    width: 60
  },
  {
    title: '书名',
    dataIndex: 'title',
    key: 'title'
  },
  {
    title: '原书名',
    dataIndex: 'original_title',
    key: 'original_title'
  },
  // {
  //   title: '封面',
  //   dataIndex: 'cover',
  //   key: 'cover',
  //   scopedSlots: { customRender: 'cover' }
  // },
  {
    title: '作者',
    dataIndex: 'author',
    key: 'author'
  },
  {
    title: '译者',
    dataIndex: 'translator',
    key: 'translator'
  },
  {
    title: '出版社',
    dataIndex: 'press',
    key: 'press'
  },
  {
    title: '页数',
    dataIndex: 'page_count',
    key: 'page_count'
  },
  {
    title: '价格',
    dataIndex: 'price',
    key: 'price'
  },
  {
    title: 'ISBN',
    dataIndex: 'isbn',
    key: 'isbn'
  },
  {
    title: '出版日期',
    dataIndex: 'pub_date',
    key: 'pub_date'
  },
  {
    title: '状态',
    dataIndex: 'status',
    key: 'status',
    customRender: (text) => text === '0' ? '上架' : '下架'
  },
  {
    title: '库存',
    dataIndex: 'repertory',
    key: 'repertory'
  },
  {
    title: '装饰',
    dataIndex: 'layout',
    key: 'layout'
  },
  {
    title: '简介',
    dataIndex: 'description',
    key: 'description',
    customRender: (text) => text ? text.substring(0, 5) + '...' : '--'
  },
  {
    title: '操作',
    dataIndex: 'action',
    align: 'center',
    fixed: 'right',
    width: 140,
    scopedSlots: { customRender: 'operation' }
  }
]

export default {
  name: 'Book',
  data () {
    return {
      loading: false,
      selectedRowKeys: [],
      columns,
      data: [],
      keyword: undefined,
      pageSize: 10,
      page: 1
    }
  },
  methods: {
    getList () {
      this.loading = true
      listApi({
        keyword: this.keyword
      }).then(res => {
        this.loading = false
        res.data.forEach((item, index) => {
          item.index = index + 1
          if (item.cover) {
            item.cover = this.$BASE_URL + item.cover
          }
        })
        this.data = res.data
        console.log(res)
      }).catch(err => {
        this.$message.error(err.msg)
        this.loading = false
      })
    },
    onSearchChange (e) {
      this.keyword = e.target.value
    },
    onSearch (value) {
      this.getList()
    },
    rowSelection () {
      return {
        onChange: (selectedRowKeys, selectedRows) => {
          this.selectedRowKeys = selectedRowKeys
        }
      }
    },
    // async handleMockAdd () {
    //    // 模拟新增
    //   for (let i = 0; i < 30; i++) {
    //     const desc = '他既到了北京、上海等繁华都市，也抵达了黑龙江朗乡、新疆吐鲁番等疆界边陲。他走到中国大地上，与各种各样的人聊天，在上海人民公园英语角里练习口语的年轻人、想去做进出口生意的学生、刚刚经历过浩劫的知识分子……他用犀利幽默的口吻，一路吐槽不断，但也用冷静、理智的眼光，剖析中国人的性格，发现时代变迁下中国人的生活日常与思想变化。'
    //     const formData = new FormData()
    //     formData.append('title', '生活图书' + i)
    //     formData.append('description', desc)
    //     formData.append('author', '马丽丽'+i)
    //     formData.append('translator', '')
    //     formData.append('isbn', '97875327617' + i)
    //     formData.append('price', Math.floor(Math.random() * 100).toString())
    //     formData.append('press', '现代出版社')
    //     formData.append('layout', '平装')
    //     formData.append('page_count', Math.floor(Math.random() * 500).toString())
    //     formData.append('repertory', Math.floor(Math.random() * 100).toString())
    //     formData.append('status', '0')
    //     formData.append('pub_date', '2011-09-28')
    //
    //     await createApi(formData)
    //     console.log('finish '+i)
    //   }
    // },
    handleAdd () {
      this.$dialog(
        EditBook,
        {
          on: {
            ok: () => {
              this.page = 1
              this.getList()
            }
          }
        },
        {
          title: '新增图书',
          width: '640px',
          centered: true,
          bodyStyle: {
            maxHeight: 'calc(100vh - 200px)',
            overflowY: 'auto'
          }
        }
      )
    },
    handleEdit (record) {
      this.$dialog(
        EditBook,
        {
          book: Object.assign({}, record),
          modifyFlag: true,
          on: {
            ok: () => {
              this.getList()
            }
          }
        },
        {
          title: '编辑图书',
          width: '640px',
          centered: true,
          bodyStyle: {
            maxHeight: 'calc(100vh - 200px)',
            overflowY: 'auto'
          }
        }
      )
    },
    // 删除
    handleDelete (record) {
      const that = this
      this.$confirm({
        title: '确定删除?',
        onOk () {
          deleteApi({
            ids: record.id
          }).then(res => {
            that.$message.success('删除成功')
            that.getList()
          }).catch(err => {
            that.$message.error(err.msg || '删除失败')
          })
        }
      })
    },
    // 批量删除
    handleBatchDelete () {
      console.log(this.selectedRowKeys)
      if (this.selectedRowKeys.length <= 0) {
        this.$message.warn('请勾选删除项')
        return
      }
      const that = this
      this.$confirm({
        title: '确定删除?',
        onOk () {
          deleteApi({
            ids: that.selectedRowKeys.join(',')
          }).then(res => {
            that.$message.success('删除成功')
            that.selectedRowKeys = []
            that.getList()
          }).catch(err => {
            that.$message.error(err.msg || '删除失败')
          })
        }
      })
    }
  },
  mounted () {
    this.getList()
  }
}
</script>

<style lang="less" scoped>
.table-wrap {
  flex: 1;
}
.page-view {
  min-height: 100%;
  background: #FFF;
  padding: 24px;
  display: flex;
  flex-direction: column;
}
.table-operation {
  height: 50px;
  text-align: right;
}
</style>

```
这就是图书管理功能的实现流程，其它的功能管理实现一模一样的。按照这个流程编写即可。

## 重要模块实现

### 分页实现

基于ant-design框架的a-table的分页插件。

```
// 分页变量

  const data = reactive({
    dataList: [],
    loading: false,
    keyword: '',
    selectedRowKeys: [] as any[],
    pageSize: 10,
    page: 1,
  });
  
// 分页插件
:pagination="{
          size: 'default',
          current: data.page,
          pageSize: data.pageSize,
          onChange: (current) => (data.page = current),
          showSizeChanger: false,
          showTotal: (total) => `共${total}条数据`,
        }"

```

### 请求工具实现

前端的请求工具是基于axios开发的，位于utils的requests.js中。封装了request请求和拦截器。

```
import axios from 'axios'
import store from '@/store'
import storage from 'store'
import notification from 'ant-design-vue/es/notification'
import {ADMIN_TOKEN, BASE_URL, TOKEN} from '@/store/constants'

// 创建 axios 实例
const request = axios.create({
  baseURL: BASE_URL,
  timeout: 180000
})

// 异常拦截处理器
const errorHandler = (error) => {
  if (error.response) {
    const data = error.response.data
    console.log(data)
    // 从 localstorage 获取 token
    if (error.response.status === 403) {
      notification.error({
        message: '未登录',
        description: '登录验证失败'
      })

      // 后台认证失败
      if (data.detail === 'AUTH_FAIL_END') {
        store.dispatch('AdminLogout').then(() => {
          setTimeout(() => {
            window.location.reload()
          }, 500)
        })
      }

      // 前台认证失败
      if (data.detail === 'AUTH_FAIL_FRONT') {
        store.dispatch('Logout').then(() => {
          setTimeout(() => {
            window.location.reload()
          }, 500)
        })
      }
    }
  }
  return Promise.reject(error)
}

// request interceptor
request.interceptors.request.use(config => {
  const adminToken = storage.get(ADMIN_TOKEN)
  const token = storage.get(TOKEN)

  config.headers['Access-Control-Allow-Headers'] = 'adminToken, token,Content-Type'

  // config.headers['Authorization'] = ''
  config.headers['ADMINTOKEN'] = adminToken
  config.headers['TOKEN'] = token
  return config
}, errorHandler)

// response interceptor
request.interceptors.response.use((response) => {
  if (response.data.code !== 200 && response.data.code !== 0) {
    return Promise.reject(response.data)
  } else {
    return response.data
  }
}, errorHandler)

export default request


```

### 权限控制模块

权限控制使用了BaseAuthentication实现的，具体代码可参考authentication.py

```
from rest_framework import exceptions
from rest_framework.authentication import BaseAuthentication
from myapp.models import User

# 接口认证
class AdminTokenAuthtication(BaseAuthentication):
    def authenticate(self, request):
        adminToken = request.META.get("HTTP_ADMINTOKEN")

        print("检查adminToken==>" + adminToken)
        users = User.objects.filter(admin_token=adminToken)
        """
        判定条件：
            1. 传了adminToken 
            2. 查到了该帐号 
            3. 该帐号是管理员或演示帐号
        """
        if not adminToken or len(users) == 0 or users[0].role == '2':
            raise exceptions.AuthenticationFailed("AUTH_FAIL_END")
        else:
            print('adminToken验证通过')


```



### 路由模块实现

前端的路由是基于vue-router框架实现的，路由文件位于src的rooter的index.js文件中。预览如下：

```
const constantRouterMap = [
  // ************* 前台路由 **************
  {
    path: '/',
    redirect: '/index'
  },
  {
    path: '/index',
    name: 'index',
    redirect: '/index/portal',
    component: () => import('@/views/index'),
    children: [
      {
        path: 'login',
        name: 'login',
        component: () => import('@/views/index/login')
      },
      {
        path: 'register',
        name: 'register',
        component: () => import('@/views/index/register')
      },
      {
        path: 'portal',
        name: 'portal',
        component: () => import('@/views/index/portal')
      },
      {
        path: 'detail',
        name: 'detail',
        component: () => import('@/views/index/detail')
      },
      {
        path: 'search',
        name: 'search',
        component: () => import('@/views/index/search')
      },
      {
        path: 'user',
        name: 'user',
        redirect: 'user/addressView',
        component: () => import('@/views/index/user'),
        children: [
          {
            path: 'addressView',
            name: 'addressView',
            component: () => import('@/views/index/user/address-view')
          },
          {
            path: 'wishBookView',
            name: 'wishBookView',
            component: () => import('@/views/index/user/wish-book-view')
          },
          {
            path: 'collectBookView',
            name: 'collectBookView',
            component: () => import('@/views/index/user/collect-book-view')
          },
          {
            path: 'orderView',
            name: 'orderView',
            component: () => import('@/views/index/user/order-view')
          },
          {
            path: 'borrowView',
            name: 'borrowView',
            component: () => import('@/views/index/user/borrow-view')
          },
          {
            path: 'userInfoEditView',
            name: 'userInfoEditView',
            component: () => import('@/views/index/user/userinfo-edit-view')
          },
          {
            path: 'followView',
            name: 'followView',
            component: () => import('@/views/index/user/follow-view')
          },
          {
            path: 'fansView',
            name: 'fansView',
            component: () => import('@/views/index/user/fans-view')
          },
          {
            path: 'scoreView',
            name: 'scoreView',
            component: () => import('@/views/index/user/score-view')
          },
          {
            path: 'commentView',
            name: 'commentView',
            component: () => import('@/views/index/user/comment-view')
          },
          {
            path: 'securityView',
            name: 'securityView',
            component: () => import('@/views/index/user/security-view')
          },
          {
            path: 'pushView',
            name: 'pushView',
            component: () => import('@/views/index/user/push-view')
          },
          {
            path: 'messageView',
            name: 'messageView',
            component: () => import('@/views/index/user/message-view')
          },
        ]
      }
    ]
  },
  // ************* 后台路由 **************
  {
    path: '/admin',
    name: 'admin',
    redirect: '/admin/overview',
    component: () => import('@/views/admin/layout/adminLayout'),
    children: [
      {
        path: 'overview',
        name: 'overview',
        component: () => import('@/views/admin/overview')
      },
      {
        path: 'book',
        name: 'book',
        component: () => import('@/views/admin/book')
      },
      {
        path: 'classification',
        name: 'classification',
        component: () => import('@/views/admin/classification')
      },
      {
        path: 'tag',
        name: 'tag',
        component: () => import('@/views/admin/tag')
      },
      {
        path: 'loginLog',
        name: 'loginLog',
        component: () => import('@/views/admin/login-log')
      },
      {
        path: 'opLog',
        name: 'opLog',
        component: () => import('@/views/admin/op-log')
      },
      {
        path: 'errorLog',
        name: 'errorLog',
        component: () => import('@/views/admin/error-log')
      },
      {
        path: 'banner',
        name: 'banner',
        component: () => import('@/views/admin/banner')
      },
      {
        path: 'ad',
        name: 'ad',
        component: () => import('@/views/admin/ad')
      },
      {
        path: 'notice',
        name: 'notice',
        component: () => import('@/views/admin/notice')
      },
      {
        path: 'comment',
        name: 'comment',
        component: () => import('@/views/admin/comment')
      },
      {
        path: 'borrow',
        name: 'borrow',
        component: () => import('@/views/admin/borrow')
      },
      {
        path: 'user',
        name: 'user',
        component: () => import('@/views/admin/user')
      },
      {
        path: 'sysInfo',
        name: 'sysInfo',
        component: () => import('@/views/admin/sys-info')
      }
    ]
  },
  {
    path: '/admin-login',
    name: 'admin-login',
    component: () => import('@/views/admin/admin-login')
  }
]

```
### 限速功能实现

限流(Throttle)就是限制客户端对API 的调用频率，是API开发者必须要考虑的因素。比如个别客户端(比如爬虫程序)短时间发起大量请求，超过了服务器能够处理的能力，将会影响其它用户的正常使用。又或者某个接口占用数据库资源比较多，如果同一时间该接口被大量调用，服务器可能会陷入僵死状态。为了保证API服务的稳定性，并防止接口受到恶意用户的攻击，我们必须要对我们的API服务进行限流。

我们使用了django的AnonRateThrottle限流类来实现的。可以参见myapp的auth目录下的MyRateThrottle.py文件

```
class MyRateThrottle(AnonRateThrottle):
    THROTTLE_RATES = {"anon": "2/min"}  # 限流每分钟只能请求2次
```

当某个api接口需要限流的时候，只需要添加注解即可，如下所示

```
@api_view(['POST'])
@throttle_classes([MyRateThrottle]) # 限流注解
def create(request):
    serializer = CommentSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)

    return APIResponse(code=1, msg='创建失败')
```

## 常见问题

- 数据库版本有要求吗？

需要mysql 5.7以上

- 前端 npm install 失败怎么办？

使用国内镜像安装，设置命令为：
```
npm config set registry https://registry.npm.taobao.org
```

- 提示"演示账号无法操作"，怎么办？

将用户的权限提高，修改b_user表的role字段

- 如何更换后端请求地址

修改store文件夹下的constants.js文件中的BASE_URL，改成你自己的后端地址

- 如何新增页面

在views文件夹下创建新的vue文件，写入界面代码，然后在router的root.js中添加路由即可。





