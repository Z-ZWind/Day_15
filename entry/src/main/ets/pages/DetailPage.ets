@Entry
@Component
export struct DetailPage{
  private controller:VideoController;
  private previewUris: Resource = $r ('app.media.liu');
  private innerResource: Resource = $rawfile('video.mp4');
  build(){
    Column() {
      Row() {
        Video({
          src: this.innerResource,
          previewUri: this.previewUris,
          controller: this.controller
        })
          .muted(false) //设置是否静音
          .controls(false) //设置是否显示默认控制条
          .autoPlay(true) //设置是否自动播放
          .loop(true) //设置是否循环播放
          .objectFit(ImageFit.Contain) //设置视频适配模式
          .layoutWeight(80)
          .height(200)
      }

        Row({ space: 130 }) {
          Column() {
            Row() {
              Image($r('app.media.touxiang'))
                .width(50)
                .height(50)
                .margin({
                  right: 10
                })

              Text("昵称")
                .fontSize(25)
            }
          }

          Column() {
            Button('+关注', { type: ButtonType.Normal }).backgroundColor(0xD2B48C)
              .fontSize(20)
              .fontColor(Color.Pink)
              .fontWeight(800)
          }
        }


      Row() {
        Column() {
          Text("介绍:学习vue基础知识，vu")
          Text("e组件生命周期等知识。")

        }
      }

    }
    }
  }

