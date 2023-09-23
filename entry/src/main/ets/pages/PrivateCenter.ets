import router from '@ohos.router'
import SettingBean from '../common/bean/SettingBean'
import viewModel from "../viewmodel/MainViewModel"

@Entry
@Component
struct PrivateCenter {
  build() {
    Column() {
      //头部部分
      MyTop()
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
    }.opacity(0.8)
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

            left: 10
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/HomePage"
            })
          })
        Text("个人中心")
          .fontSize(30)
          .fontWeight(FontWeight.Bolder)
          .width("100%")
          .textAlign(TextAlign.Start)
          .margin({
            top:3,
            left:100
          })

      }

      //用户头像部分
      Row() {
        //头像部分
        Image($r("app.media.QQ"))
          .width(60)
          .height(60)
          .borderRadius(15)

        //用户信息部分
        Column() {
          Text("今天也没bug")
            .fontSize(22)
            .fontWeight(FontWeight.Bold)
          Text("B币：0   硬币：782")
        }
        .margin({
          left: 15
        })
        .width("70%")
        .alignItems(HorizontalAlign.Start)
      }
      .margin(10)
      .padding({
        top: 20,
        bottom: 20,
        left: 45,
        right: 45
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
      Row() {
        Image(this.icon)
          .width(30)
          .height(30)
        Text(this.title)
          .margin({ left: 5 })
      }.margin({
        left: 10
      }).height(50)
      //箭头
      Image($r("app.media.jiantou2"))
        .width(30)
        .height(30)
        .margin({
          right: 10
        })
    }
    .width("100%")
    .justifyContent(FlexAlign.SpaceBetween) //两端对齐
    .margin({
      top:10
    })
  }
}