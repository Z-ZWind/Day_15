//Grid 可滚动的网格布局--淘票票案例-加强
import router from '@ohos.router'
import MovieBean from '../common/bean/MovieBean'
import { CommonTitle } from '../common/component/CommonTitle'
import viewmodel from "../viewModel/MovieViewModel"

@Entry
@Component
struct WearPage {
  movieHeight: number = 200

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


        Text("主题设置")
          .fontSize(30)
          .fontWeight(FontWeight.Bolder)
          .width("100%")
          .textAlign(TextAlign.Start)
          .margin({
            top: 3,
            left: 100
          })
          .fontColor(Color.White)
      }.backgroundColor("#FFA07A")

      Grid() {
        ForEach(viewmodel.getHotMovies(), (item: MovieBean, index?: number) => {
          GridItem() {
            MyMovieItem({
              imageUrl: item.movieImageUrl,
              name: item.movieName
            })
          }
          .width(this.movieHeight)

        }, (item) => item.toString())

      }
      .rowsTemplate("1fr") //只设置行，不设置列，那么就可以横向滚动
      .height(450)
      .rowsGap(10)
      .margin(10)

      Column(){
        Row(){
          Text("更多活动")
            .fontSize(20)
            .margin({
              right:150
            })
          Image($r("app.media.jiantou2"))
            .width(40)
            .height(40)
            .margin({
              left:35
            })
        }
        Image($r("app.media.act"))
          .width("90%")
          .height(160)
          .borderRadius(10)
      }.backgroundColor("#F8F8FF")




    }
  }
}


@Preview
@Component
struct MyMovieItem {
  imageUrl: Resource
  name: string

  build() {
    Column() {
      Image(this.imageUrl)
        .width(180)
        .height(350)
        .borderRadius(20)
      Text(this.name)
        .margin({
          top: 5,
          bottom: 5
        })
      Button("选择")
        .backgroundColor(Color.Red)
        .height(35)
        .width(80)
        .onClick(()=>{
          AlertDialog.show({
            title: "提示",
            message: "你选择了"+this.name+"主题",
            autoCancel: true,
          })
        })
    }
  }
}