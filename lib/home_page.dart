import 'package:films_ui/models/popular.dart';
import 'package:films_ui/models/showing.dart';
import 'package:films_ui/widget/movie_card.dart';
import 'package:films_ui/widget/popular_card.dart';
import 'package:films_ui/widget/section_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu,
                  color: const Color.fromARGB(255, 20, 24, 63)),
              onPressed: () {},
            ),
            Text(
              "FilmKu",
              style: TextStyle(
                  color: const Color.fromARGB(255, 20, 24, 63),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.notifications,
                      color: const Color.fromARGB(255, 20, 24, 63)),
                  onPressed: () {},
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: "Now Showing",
                onTap: () {},
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: nowShowing.length,
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemBuilder: (context, index) {
                    final movie = nowShowing[index];
                    return MovieCard(
                        poster: movie.poster,
                        title: movie.title,
                        rating: movie.rating);
                  },
                ),
              ),
              SizedBox(height: 20),
              //popular section
              SectionTitle(
                title: "Popular",
                onTap: () {},
              ),
              SizedBox(height: 10),
              ListView.separated(
                shrinkWrap: true,
                physics:NeverScrollableScrollPhysics(),
                itemCount: popular.length,
                separatorBuilder: (context, index) => SizedBox(height: 15),
                itemBuilder: (context, index) {
                  final popumovie = popular[index];
                  return PopularMovieCard(
                      poster: popumovie.poster,
                      title: popumovie.title,
                      rating: popumovie.rating,
                      tags: popumovie.tags,
                      duration: popumovie.duration);
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.local_movies_outlined),
          label: 'Movie',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          label: 'Watchlist',
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      ),
    );
  }
}
