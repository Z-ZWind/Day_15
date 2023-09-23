@Entry
@Component
struct MoviePage {
  private controller:VideoController;
  build() {
    Column() {
      Row(){
        Flex({ justifyContent: FlexAlign.SpaceBetween }) {
          Image($r('app.media.back'))
            .width(25)
            .height(25)
            .margin({
              left:15
            })

          Text("班级列表")
            .fontSize(30)

          Image($r('app.media.search'))
            .width(25)
            .height(25)
            .margin({
              right:15
            })
        }
      }
      Row(){
        Tabs() {
          TabContent() {

            Text('全部班级内容').fontSize(30)

          }
          .tabBar('全部班级')
          TabContent() {
            Column(){
              Flex({ direction: FlexDirection.Column,
                justifyContent:FlexAlign.Start}) {
                Row() {
                  Flex({ justifyContent: FlexAlign.SpaceBetween }) {
                    Text("共2个课程")
                      .fontSize(15)
                      .margin({
                        left: 10
                      })
                    Text("人数:")
                      .fontSize(15)
                      .margin({
                        right: 10
                      })
                  }
                }

                Row() {
                  Image($r('app.media.class1'))
                    .width("40%")
                    .height("15%")
                    .margin(10)
                  Column() {
                    Text("Vue.js 内训班(xx老师)")
                      .fontSize(20)
                    Text("人数：53")
                      .fontSize(12)
                    Text("介绍:学习vue基础知识，vu")
                    Text("e组件生命周期等知识。")
                      .maxLines(3)

                    Text("")
                      .fontSize(12)
                  }
                  .alignItems(HorizontalAlign.Start)
                }
                Row() {
                  Image($r('app.media.calss2'))
                    .width("40%")
                    .height("15%")
                    .margin(10)
                  Column() {
                    Text("java初级班(xx老师)")
                      .fontSize(20)
                    Text("人数：55")
                      .fontSize(12)
                    Text("介绍:学习java基础知识")
                      .maxLines(3)
                    Text("")
                      .fontSize(12)
                  }
                  .alignItems(HorizontalAlign.Start)
                }



              }
              .width('100%')
              .padding(10)
            }

          }.tabBar("我的班级")
        }


      }
      .width('100%')
    }
  }}