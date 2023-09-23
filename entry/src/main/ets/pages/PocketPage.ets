import router from '@ohos.router'
@Entry
@Component
struct PocketPage {
  @State message: string = 'Hello World'

  build() {
    Column() {

      Row(){
        Image($r("app.media.back"))
          .width(30)
          .height(30)
          .margin({

            left: 20
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/HomePage"
            })
          })

        Text("我的钱包")
          .fontSize(30)
          .fontWeight(FontWeight.Bolder)
          .width("100%")
          .fontColor(Color.White)
          .textAlign(TextAlign.Start)
          .margin({
            top: 3,
            left: 100
          })
      }.backgroundColor("#FFA07A")
      Row(){
        Column(){
          Image($r("app.media.cion"))
            .width(50)
            .height(50)
            .margin({
              top: 30,

            })
          Text("B币")
        }
        Column(){
          Image($r("app.media.beike"))
            .width(50)
            .height(50)
            .margin({
              top: 30,
            })
          Text("贝壳")
        }.margin({
          left:20
        })
        Column(){
          Image($r("app.media.yhj"))
            .width(50)
            .height(50)
            .margin({
              top: 30,
            })
          Text("优惠券")
        }.margin({
          left:20
        })
        Column(){
          Image($r("app.media.jf"))
            .width(50)
            .height(50)
            .margin({
              top: 30,
            })
          Text("积分")
        }.margin({
          left:20
        })

      }
      Row(){
          Button("充值B币")
            .width("80%")
            .margin({
              top:20
            })
      }
      Row(){
        Image($r("app.media.guanggao"))
          .width("95%")
          .height(100)
          .borderRadius(10)
          .margin({
            top: 10,
          })
      }
      Row(){
        Column(){
          Text("钱包服务")
            .fontSize(20)
            .margin({
              left:85,
              top:10
            })
          Row(){
            Column(){
              Image($r("app.media.red"))
                .width(50)
                .height(50)
                .margin({

                })
              Text("红包")
            }.margin({
              left:25
            })

            Column(){
              Image($r("app.media.sim"))
                .width(50)
                .height(50)
                .margin({

                })
              Text("流量卡")
            }.margin({
              left:40
            })

            Column(){
              Image($r("app.media.mh"))
                .width(50)
                .height(50)
                .margin({

                })
              Text("漫画")
            }.margin({
              left:40
            })
          }.margin({
            left:55
          })

        }


      }
      .width("95%")
      .margin({
        top:10
      })
      .border({
        width:2,
        radius:10,
        color: "#DCDCDC",
      })
      .backgroundColor("#FFFAFA")
    }

  }
}