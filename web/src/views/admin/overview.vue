<template>
  <a-spin :spinning="showSpin">
    <div class="main">
      <a-row :gutter="[20,20]">
        <a-col :sm="24" :md="12" :lg="6">
          <a-card size="small" title="图书总数">
            <a-tag color="blue" slot="extra">总</a-tag>
            <div class="box">
              <div class="box-top">
                <span class="box-value">{{ data.book_count }}<span class="v-e">本</span></span>
                <a-icon type="profile" theme="twoTone" style="font-size: 24px;"/>
              </div>
              <div class="box-bottom">
                <span>本周新增 {{ data.book_week_count }} 本</span>
              </div>
            </div>
          </a-card>
        </a-col>

        <a-col :sm="24" :md="12" :lg="6">
          <a-card size="small" title="在借书籍">
            <a-tag color="green" slot="extra">借</a-tag>
            <div class="box">
              <div class="box-top">
                <span class="box-value">{{ data.borrow_count }}<span class="v-e">本</span></span>
                <a-icon type="carry-out"  theme="twoTone" style="font-size: 24px;"/>
              </div>
              <div class="box-bottom">
                <span>共 {{data.borrow_person_count}} 人</span>
              </div>
            </div>
          </a-card>
        </a-col>

        <a-col :sm="24" :md="12" :lg="6">
          <a-card size="small" title="已还书籍">
            <a-tag color="blue" slot="extra">还</a-tag>
            <div class="box">
              <div class="box-top">
                <span class="box-value">{{ data.return_count }}<span class="v-e">本</span></span>
                <a-icon type="interaction" theme="twoTone" style="font-size: 24px;"/>
              </div>
              <div class="box-bottom">
                <span>共 {{data.return_person_count}} 人</span>
              </div>
            </div>
          </a-card>
        </a-col>

        <a-col :sm="24" :md="12" :lg="6">
          <a-card size="small" title="逾期未还">
            <a-tag color="green" slot="extra">逾</a-tag>
            <div class="box">
              <div class="box-top">
                <span class="box-value">{{ data.overdue_count }}<span class="v-e">本</span></span>
                <a-icon type="bell" theme="twoTone" style="font-size: 24px;"/>
              </div>
              <div class="box-bottom">
                <span>共 {{data.overdue_person_count}} 人</span>
              </div>
            </div>
          </a-card>
        </a-col>
      </a-row>

      <a-row :gutter="[20,20]">
        <a-col :sm="24" :md="24" :lg="24">
          <a-card title="热门借阅排名">
            <a-table :columns="columns" :dataSource="data.borrow_rank_data" rowKey="title" />
          </a-card>
        </a-col>
      </a-row>
    </div>
  </a-spin>
</template>

<script>
import { listApi } from '@/api/admin/overview'
import storage from 'store'
import { ADMIN_TOKEN } from '@/store/constants'

export default {
  name: 'One',
  data () {
    return {
      showSpin: true,
      data: {
        borrow_rank_data: [],
        classification_rank_data: [],
        visit_data: []
      },
      columns: [
        {
          title: '排名',
          dataIndex: 'rank',
          key: 'rank',
          customRender: (text, record, index) => index + 1
        },
        {
          title: '书名',
          dataIndex: 'title',
          key: 'title'
        },
        {
          title: '借阅次数',
          dataIndex: 'count',
          key: 'count'
        }
      ]
    }
  },
  mounted () {
    console.log(storage.get(ADMIN_TOKEN))
    this.list()
  },
  methods: {
    list () {
      listApi({}).then(res => {
        console.log(res.data)
        this.data = res.data
        this.showSpin = false
      }).catch(err => {
        this.showSpin = false
        this.$message.error(err.msg || '获取失败！')
      })
    }
  }
}
</script>

<style lang="less" scoped>
.main {
  height: 100%;
  display: flex;
  gap: 20px;
  flex-direction: column;

  .box {
    padding: 12px;
    display: flex;
    flex-direction: column;

    .box-top {
      display: flex;
      flex-direction: row;
      align-items: center;
    }
    .box-value {
      color: #000000;
      font-size: 32px;
      margin-right: 12px;
      .v-e {
        font-size: 14px;
      }
    }

    .box-bottom {
      margin-top: 24px;
      color: #000000d9;
    }
  }
}
</style>
