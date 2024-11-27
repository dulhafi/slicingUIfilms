import 'package:films_ui/detail_page.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String poster;
  final String title;
  final String rating;

  MovieCard({required this.poster, required this.title, required this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailPage()),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              poster,
              fit: BoxFit.cover,
              height: 200,
              width: 150,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.star, size: 10, color: Colors.amber),
              SizedBox(width: 4),
              Text(
                rating,
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
