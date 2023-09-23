//ViewModel写法
import SettingBean from '../common/bean/SettingBean';

export class MainViewModel {


  //获取设置中心Items数据
  getSettingData(): Array<SettingBean> {

    let items: SettingBean[] = [
      new SettingBean($r("app.media.account"), "账号资料"),
      new SettingBean($r("app.media.safe"), "安全隐私"),
      new SettingBean($r("app.media.pic"), "开屏画面设置"),
      new SettingBean($r("app.media.play"), "播放设置"),
      new SettingBean($r("app.media.push"), "推送设置"),
      new SettingBean($r("app.media.message"), "消息设置"),
      new SettingBean($r("app.media.download"), "下载管理"),
      new SettingBean($r("app.media.note"), "通知和状态栏"),
      new SettingBean($r("app.media.saving"), "存储"),
      new SettingBean($r("app.media.waiter"), "客服"),
      new SettingBean($r("app.media.pact"), "用户协议"),
      new SettingBean($r("app.media.privacy"), "隐私设置"),
    ]
    return items
  }
}

//外面就不需要new这个类的对象了
export default new MainViewModel()