@Entry
@Component
struct Login {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {


      }
      .width('100%')
    }.backgroundImage($r("app.media.login"))
    .backgroundImageSize({
      width:"100%",
      height:"100%"
    })
    .height('100%')
  }
}