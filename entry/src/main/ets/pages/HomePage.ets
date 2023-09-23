import router from '@ohos.router'
import { CommonTitle } from "../common/component/CommonTitle"
import viewmodel from '../viewmodel/PictureViewModel'
import PictureBean from '../common/bean/PictureBean'
@Entry
@Component
struct HomePage {
  private swiperController: SwiperController = new SwiperController()
  build() {
    SideBarContainer(SideBarContainerType.Overlay) {
      //侧边栏部分刘畅
      Column() {
        Image($r("app.media.QQ"))
          .width(100)
          .height(100)
          .borderRadius(50)
          .margin({
            top:50,
            bottom:10
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/PrivateCenter"
            })
          })
        Text("今天也没有bug")
          .fontSize(17)
          .fontWeight(FontWeight.Bold)
        Text("大鹏一日同风起，扶摇直上九万里！")
          .fontSize(10)
        // .fontWeight(FontWeight.Bold)
        Button("用户信息")
          .margin({
            top: 30
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/PrivateCenter"
            })
          })
        Button("钱包服务")
          .margin({
            top: 50
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/PocketPage"
            })
          })
        Button("个性装扮")
          .margin({
            top: 50
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/WearPage"
            })
          })
        Button("设置中心")
          .margin({
            top: 50
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/SettingPage"
            })
          })
        Button("收藏文件")
          .margin({
            top: 50
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/HomePage"
            })
          })
        Button("浏览历史")
          .margin({
            top: 50
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/HomePage"
            })
          })
      }
      .backgroundColor("#F8F8FF")
      .margin({
        top: 45
      })



      //主页部分
      Column() {
        //标题部分
        Row(){
          Search({placeholder:"请搜索想要的视频"})
            .width(220)
            .margin({
              top:10,
              left:45
            })

          Image($r("app.media.game"))
            .width(35)
            .height(30)
            .margin({
              top:10,
              left:5
            })

          Image($r("app.media.mess"))
            .width(35)
            .height(30)
            .margin({
              top:10,
              left:5
            })

        }.height(50)

        Column(){
          Swiper(this.swiperController) {
            Image($r("app.media.top1"))
              .width('90%')
              .height('20%')
              .borderRadius(10)
              .margin({
                top:20
              })

            Image($r("app.media.top2"))
              .width('90%')
              .height('20%')
              .borderRadius(10)
              .margin({
                top:20
              })

            Image($r("app.media.top3"))
              .width('90%')
              .height('20%')
              .borderRadius(10)
              .margin({
                top:20
              })

          }
          .loop(true)
          .autoPlay(true)
          .interval(1000)
        }


        Grid() {
          ForEach(viewmodel.getPictureList(), (item: PictureBean, index?: number) => {
            GridItem() {
              MyPicture({
                imageUrl: item.image,
                imageName: item.name,
                clickNum: item.clickNumber,
                favouriteNum: item.favouriteNumber
              }).border({
                width: 2,
                color: "#D3D3D3",
                radius:10
              })
            }.backgroundColor("#F5F5F5")

          }, (item) => item.toString())


        }.columnsTemplate("1fr 1fr")
        .rowsGap(1)
        .columnsGap(1)
        .padding({
          left:18,
          right:18,
          top:10
        })
        //背景
      }

    }.sideBarWidth(90) //设置侧边栏的宽度
    .controlButton({ //设置控制按钮
      top: 5,
      height: 45  //设置控制按钮的高度
    })
    .showSideBar(false)
  }
}
@Preview
@Component
struct MyPicture {
  imageUrl: Resource
  imageName: string
  clickNum: number
  favouriteNum: number
  @State isFavouriteClick: boolean = false
  @State isClickClick: boolean = false
  // @State handlePopup: boolean = false

  build() {
    Column() {
      Image(this.imageUrl)
        .width("100%")
        .height(100)
        .borderRadius(10)
      Text(this.imageName)
        .fontWeight(20)
        .fontColor(Color.Grey)
        .margin({
          top: 5,
          left:5
        })

      Flex({
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.SpaceBetween
      }) {
        Row() {
          Image(this.isClickClick ? $r("app.media.click1") : $r("app.media.click0"))
            .width(25)
            .height(25)
            .onClick(() => {
              this.isClickClick = !this.isClickClick
            })

          Image(this.isFavouriteClick ? $r("app.media.favourite0") : $r("app.media.favourite1"))
            .width(25)
            .height(25)
            .onClick(() => {
              this.isFavouriteClick = !this.isFavouriteClick
            })
            .margin({
              left:1,
              top:3
            })
        }
        Row(){
          Image($r("app.media.and"))
            .width(25)
            .height(25)
            // .bindPopup(this.handlePopup, {
            //   message: 'This is a popup with PopupOptions',
            // })
        }
      }.width("100%")
      .padding({
        left: 3,
        right: 3,

      })
    }.height(150)

  }
}
