import 'package:flutter/material.dart';
class PopularMovieCard extends StatelessWidget {
  final String poster;
  final String title;
  final String rating;
  final List<String> tags;
  final String duration;

  PopularMovieCard({
    required this.poster,
    required this.title,
    required this.rating,
    required this.tags,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            poster,
            fit: BoxFit.cover,
            height: 100,
            width: 70,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.star, size: 12, color: Colors.amber),
                  SizedBox(width: 4),
                  Text(
                    rating,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Wrap(
                spacing: 5,
                children: tags
                    .map((tag) => Chip(
                          label: Text(tag),
                          backgroundColor: Colors.blue[100],
                        ))
                    .toList(),
              ),
              SizedBox(height: 2),
              Text(
                duration,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}