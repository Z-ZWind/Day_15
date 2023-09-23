
//ViewModel写法

import SettingBean from '../common/bean/SettingBean';

export class MainViewModel {


  //获取设置中心Items数据
  getSettingData(): Array<SettingBean> {

    let items: SettingBean[] = [
      new SettingBean($r("app.media.lixian"), "离线缓存"),
      new SettingBean($r("app.media.lishi"), "历史记录"),
      new SettingBean($r("app.media.shoucang"), "我的收藏"),
      new SettingBean($r("app.media.shaohou"), "稍后再看"),
      new SettingBean($r("app.media.yijian"), "意见反馈"),
      new SettingBean($r("app.media.qianbao"), "我的钱包"),
      new SettingBean($r("app.media.wenjian"), "我的文件"),
      new SettingBean($r("app.media.xiangce"), "我的相册"),
      new SettingBean($r("app.media.huiyuan"), "我的大会员"),
    ]
    return items
  }
}

//外面就不需要new这个类的对象了
export default new MainViewModel()