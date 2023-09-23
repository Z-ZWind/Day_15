/**
 * 相册应用的业务类
 */
export default class PictureBean {
  image: Resource //图片资源
  name: string //图片名称
  favouriteNumber: number //收藏数
  clickNumber: number //点赞数


  constructor(name: string, clickNumber: number, favouriteNumber: number, image: Resource) {
    this.name = name
    this.clickNumber = clickNumber
    this.favouriteNumber = favouriteNumber
    this.image = image
  }
}