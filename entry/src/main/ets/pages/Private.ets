@Entry
@Component
struct Private {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {


      }
      .width('100%')
    }.backgroundImage($r("app.media.userItem"))
    .backgroundImageSize({
      width:"100%",
      height:"100%"
    })
    .height('100%')
  }
}