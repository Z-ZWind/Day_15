export default class MovieBean {
  movieName: string;
  movieImageUrl: Resource;

  constructor(movieName: string, movieImageUrl: Resource) {
    this.movieName = movieName
    this.movieImageUrl = movieImageUrl
  }
}