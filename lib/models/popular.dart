class Popular {
  String title;
  String poster;
  String rating;
  List<String> tags;
  String duration;

  Popular(
      {required this.title,
      required this.poster,
      required this.rating,
      required this.tags,
      required this.duration});
}

var popular = [
  Popular(
      title: 'Venom Let There Be Carnage',
      poster: 'assets/4.jpg',
      rating: '6.4/10 IMDb',
      tags: ['Horror', 'Mystery', 'Thriller'],
      duration: '1h 47m'),
  Popular(
      title: 'The Kings Man',
      poster: 'assets/5.jpg',
      rating: '6.4/10 IMDb',
      tags: ['Action', 'Adventure', 'Comedy'],
      duration: '2h 10m'),
];
