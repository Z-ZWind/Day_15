//ViewModel写法
import FriendsBean from '../common/bean/FriendsBean';

export class MainViewModel {


  //获取设置中心Items数据
  getSettingData(): Array<FriendsBean> {

    let items: FriendsBean[] = [
      new FriendsBean($r("app.media.account"), "账号资料"),
      new FriendsBean($r("app.media.safe"), "安全隐私"),
      new FriendsBean($r("app.media.pic"), "开屏画面设置"),
      new FriendsBean($r("app.media.play"), "播放设置"),
      new FriendsBean($r("app.media.push"), "推送设置"),
      new FriendsBean($r("app.media.message"), "消息设置"),
      new FriendsBean($r("app.media.download"), "下载管理"),
      new FriendsBean($r("app.media.note"), "通知和状态栏"),
      new FriendsBean($r("app.media.saving"), "存储"),
      new FriendsBean($r("app.media.waiter"), "客服"),
      new FriendsBean($r("app.media.pact"), "用户协议"),
      new FriendsBean($r("app.media.privacy"), "隐私设置"),
    ]
    return items
  }
}

//外面就不需要new这个类的对象了
export default new MainViewModel()