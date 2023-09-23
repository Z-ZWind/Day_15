//Bean的固定写法
//TypeScript 这门语言的语法

export default class SettingBean{
  head: Resource
  content: string

  constructor(head:Resource, content:string) {
    this.head = head
    this.content = content
  }
}