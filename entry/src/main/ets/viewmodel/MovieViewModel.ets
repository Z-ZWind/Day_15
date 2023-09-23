import MovieBean from '../common/bean/MovieBean'
export class MovieViewModel {

  getHotMovies(): Array<MovieBean> {
    let movieList: MovieBean[] = [
      new MovieBean("柔和粉", $r("app.media.pink")),
      new MovieBean("神秘紫", $r("app.media.pop")),
      new MovieBean("绅士黑", $r("app.media.black")),
    ]
    return movieList
  }
}

export default new MovieViewModel()