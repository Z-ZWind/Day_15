import SettingBean from '../common/bean/SettingBean'
import viewModel from "../viewmodel/SettingViewModel"
import router from '@ohos.router';

@Entry
@Component
struct SettingPage {
  build() {
    Column() {
      //头部部分
      MyTop()
      Scroll(){
        //列表部分
        List() {

          ForEach(viewModel.getSettingData(), (item: SettingBean, index?: number) => {
            ListItem() {
              MySettingItem({
                icon: item.icon,
                title:item.content
              })
            }
          }, (item) => item.toString())
        }
        .divider({
          strokeWidth: 1,
          color: "#f1f3f5",
          startMargin: 50,
          endMargin: 50
        })
        .margin(10)
        .padding({
          top: 20,
          bottom: 20,
          left: 10,
          right: 10
        })
        .backgroundColor(Color.White)
        .borderRadius(15)
        .height("570")
      }.scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.On)
      .width("100%")
      .borderColor(Color.Red)
      // .height("100%")

    }.opacity(0.8)
    // .backgroundColor("#f2f3f5")
    // .width("100%")
    // .height("100%")
    .width("100%")
    .height("100%")
    .backgroundImage($r("app.media.settingbackground"))
    .backgroundImageSize({
      width:"100%",
      height:"100%"
    })
  }
}

@Component
struct MyTop {
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

        Text("设置")
          .fontSize(30)
          .fontWeight(FontWeight.Bolder)
          //.width("100%")
          .textAlign(TextAlign.Center)
          .layoutWeight(1)
          .margin({
            top:3,
            right:50
          })

      }


      //搜索框部分
      Search({
        placeholder: "搜索设置项"
      })
        .width("90%")
        .backgroundColor(Color.White)

      //用户头像部分
      Row() {
        Stack(){
          //用户信息部分
          Column() {
            Button("今天也没有bug")
              .fontSize(22)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.Black)
              .width("100%")
              .height(80)
              .backgroundColor(Color.White)
          }.margin({
            left:10
          }).width("100%")
          .alignItems(HorizontalAlign.Start)



          //头像部分
          Image($r("app.media.QQ"))
            .width(50)
            .height(50)
            .borderRadius(25)
            .margin({
              right:220
            })

          //箭头
          Image($r("app.media.jaintou"))
            .width(40)
            .height(40)
            .padding(5)
            .margin({
              left:283
            })

        }

      }
      .margin(10)
      .padding({
        top: 20,
        bottom: 20,
        left: 10,
        right: 10
      })
      .backgroundColor(Color.White)
      .borderRadius(15)

    }
  }
}


@Component
struct MySettingItem {
  icon: Resource
  title: string = ""

  build() {
    Row() {
        //左边是一个icon+文本
        Stack() {
          Button(this.title)
            .margin({ left:0 })
            .backgroundColor(Color.White)
            .fontColor(Color.Black)
            .opacity(0.8)
            .backgroundImage(this.icon)
            .width("100%")
            .height(50)
            .borderRadius(-1)



          Image(this.icon)
            .width(30)
            .height(30)
            .margin({
              right: 240
            })


          //箭头
          Image($r("app.media.jiantou2"))
            .width(30)
            .height(30)
            .margin({
              left: 270
            })

        }.margin({
          left: 10
        })

    }.width("100%")
    .height(50)
    .justifyContent(FlexAlign.SpaceBetween) //两端对齐
    .margin({
      top:5
    })
  }
}