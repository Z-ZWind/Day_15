@Component
export struct  CommonTitle {
  title: string
  color: Color

  build() {
    Row() {
      Text(this.title)
        .fontSize(26)
        .fontWeight(800)
        .fontColor(Color.Blue)
        .margin({
          top: 50
        })
        .fontColor(this.color)
        .width("100%")
        .textAlign(TextAlign.Center)
    }
  }
}