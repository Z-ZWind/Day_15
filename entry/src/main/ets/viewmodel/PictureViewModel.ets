import PictureBean from '../common/bean/PictureBean'

export class PictureViewModel {
  getPictureList(): Array<PictureBean> {
    let picList: PictureBean[] = [
      new PictureBean("你 的 timing", 200, 100, $r("app.media.m1")),
      new PictureBean("华为Mate60pro+", 300, 80, $r("app.media.m2")),
      new PictureBean("中国奥运史上最具..", 400, 120, $r("app.media.m3")),
      new PictureBean("离大谱！你先开...", 600, 180, $r("app.media.m4")),
      new PictureBean("年少时，我只觉得..", 100, 200, $r("app.media.m5")),


      new PictureBean("石宇奇，一位出场..", 200, 100, $r("app.media.m6")),
      new PictureBean("雾山五行", 300, 80, $r("app.media.m7")),
      new PictureBean("球路分析，重温普...", 400, 120, $r("app.media.m8")),
      new PictureBean("人类群星闪耀！", 600, 180, $r("app.media.m9")),
      new PictureBean("罗布泊为何成为死...", 100, 200, $r("app.media.m10")),

      new PictureBean("你 的 timing", 200, 100, $r("app.media.m1")),
      new PictureBean("华为Mate60pro+体验", 300, 80, $r("app.media.m2")),
      new PictureBean("中国奥运史上最具..", 400, 120, $r("app.media.m3")),
      new PictureBean("离大谱！你先开...", 600, 180, $r("app.media.m4")),
      new PictureBean("年少时，我只觉得..", 100, 200, $r("app.media.m5")),


      new PictureBean("石宇奇，一位出场..", 200, 100, $r("app.media.m6")),
      new PictureBean("雾山五行", 300, 80, $r("app.media.m7")),
      new PictureBean("球路分析，重温普...", 400, 120, $r("app.media.m8")),
      new PictureBean("人类群星闪耀！", 600, 180, $r("app.media.m9")),
      new PictureBean("罗布泊为何成为死...", 100, 200, $r("app.media.m10")),

    ]
    return picList
  }
}

export default new PictureViewModel()