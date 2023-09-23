//Bean的固定写法
//TypeScript 这门语言的语法

export default class SettingBean{
  icon: Resource
  content: string

  constructor(icon:Resource, content:string) {
    this.icon = icon
    this.content = content
  }
}