import router from '@ohos.router';

@Entry
@Component
struct LoginPage {
  //获取输入的用户名、密码、是否选中
  @State username: string = ""
  @State password: string = ""
  @State isSelected: boolean = false

  build() {
    Column() {
      Text("哔哩哔哩（山寨）")
        .fontSize(30)
        .fontWeight(FontWeight.Bolder)
        .fontColor(Color.White)
        .margin({
          top: 200,
          bottom: 50
        })
        .width("100%")
        .textAlign(TextAlign.Center)

      TextInput({
        placeholder: "请输入用户名"
      }).onChange((value: string) => {
        this.username = value
      })

      TextInput({
        placeholder: "请输入用密码"
      }).margin({
        top: 20
      })
        .onChange((value: string) => {
          this.password = value
        })
        .type(InputType.Password)  //输入类型限制为密码，密文输入
      // .showPasswordIcon(false)

      Row() {
        Checkbox()
          .onChange((value: boolean) => {  //获取选中的状态值
            this.isSelected = value
          })
        Text("请勾选用户隐私协议")
          .decoration({
            type: TextDecorationType.Underline,
            color: Color.Black
          })
          .onClick(()=>{
            router.replaceUrl({
              url: "pages/Private"
            })
          })
      }.margin({
        top: 10
      })

      Button("登录")
        .width("80%")
        .height(40)
        .margin({
          top: 20
        })
        .backgroundColor("#4169E1")
        .onClick(() => {
          //校验是否勾选用户隐私协议
          if(!this.isSelected){
            //提示用户，需要勾选隐私协议
            AlertDialog.show({     //对话框的使用
              title: "提示",
              message:"请勾选隐私协议",
              autoCancel:true,
            })
            return
          }

          //校验我的账号和密码，比如 admin, 123456
          if(this.username == "admin" && this.password =="123456"){
            //账号和密码校验成功，可以登录了
            router.replaceUrl({
              url: "pages/HomePage"
            })
          }else {
            AlertDialog.show({
              title:"登录错误提示",
              message:"账号或者密码错误",
              autoCancel:true
            })
          }
        })
      Row(){
      Image($r("app.media.zfb"))
        .width(50)
        .height(50)
        .borderRadius(50)
        .margin({
          top:50,
          bottom:10
        })
        .onClick(() => {
          router.pushUrl({
            url: "pages/login"
          })
        })
      Image($r("app.media.qq"))
        .width(50)
        .height(50)
        .borderRadius(50)
        .margin({
          top:50,
          bottom:10,
          left:30
        })
        .onClick(() => {
          router.pushUrl({
            url: "pages/PrivateCenter"
          })
        })
        Image($r("app.media.wechat"))
          .width(50)
          .height(50)
          .borderRadius(50)
          .margin({
            top:50,
            bottom:10,
            left:30
          })
          .onClick(() => {
            router.pushUrl({
              url: "pages/PrivateCenter"
            })
          })
      }


    }.width("100%")
    .height("100%")
    .backgroundImage($r("app.media.LoginBackGround"))
    .backgroundImageSize({
      width:"100%",
      height:"100%"
    })
  }

}