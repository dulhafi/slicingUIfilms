import 'package:films_ui/widget/buildcastcard.dart';
import 'package:films_ui/widget/buildinfocolumn.dart';
import 'package:films_ui/widget/buildtag.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/detail_1.jpg',
                    height: 300, width: double.infinity, fit: BoxFit.cover),
                Positioned(
                  top: 20,
                  left: 5,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  bottom: 110,
                  right: 175,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(Icons.play_arrow, color: Colors.red, size: 30),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Spiderman: No Way\nHome',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bookmark_border, size: 30),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 4),
                      Text(
                        '9.1/10IMDb',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    children: [
                      buildTag('Action'),
                      buildTag('Adventure'),
                      buildTag('Fantasy'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildInfoColumn('Length', '2h 28min'),
                      buildInfoColumn('Language', 'English'),
                      buildInfoColumn('Rating', 'PG-13')
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. '
                    'When a spell goes wrong, dangerous foes from other worlds start to appear, '
                    'forcing Peter to discover what it truly means to be Spider-Man.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  //cast
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cast',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextButton(onPressed: () {}, child: Text('See More')),
                    ],
                  ),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildCastCard(
                          name: 'Tom Holland',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/8/80/Tom_Holland_by_Gage_Skidmore.jpg',
                        ),
                        buildCastCard(
                          name: 'Zendaya',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/e/ea/Zendaya_in_2019_by_Glenn_Francis.jpg',
                        ),
                        buildCastCard(
                          name: 'Benedict Cumberbatch',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/2/2a/Benedict_Cumberbatch_2019.jpg',
                        ),
                        buildCastCard(
                          name: 'Jacob Batalon',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/9/98/Jacob_Batalon_by_Gage_Skidmore.jpg',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
