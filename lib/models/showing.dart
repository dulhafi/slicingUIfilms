class Showing {
  String title;
  String poster;
  String rating;

  Showing({required this.title, required this.poster, required this.rating});
}

var nowShowing = [
  Showing(
    title: 'Spiderman:No Way..\nHome',
    poster: 'assets/1.jpg',
    rating: '9.1/10 IMDb',
  ),
  Showing(
    title: 'Eternals',
    poster: 'assets/2.jpeg',
    rating: '9.5/10 IMDb',
  ),
  Showing(
    title: 'Shang-Chi',
    poster: 'assets/3.jpg',
    rating: '8.1/10 IMDb',
  ),
];
