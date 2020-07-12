import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/description_screen.dart';
import 'package:travel_app/widgets.dart';

class HomeScreen extends StatelessWidget {
  final PageController pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.7,
  );

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: screenSize.height * 0.113),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: RowHeading(
              heading: 'Explore',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchField(),
          ),
          Expanded(
            child: PageView(
                onPageChanged: (page) {},
                pageSnapping: true,
                controller: pageController,
                children: <Widget>[
                  ImageCard(
                    imagePath: 'assets/bali.png',
                    name: 'Bali',
                  ),
                  ImageCard(),
                  ImageCard(
                    imagePath: 'assets/brazil.png',
                    name: 'Brazil',
                  )
                ]),
          )
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({Key key, this.imagePath = 'assets/maldives.png', this.name})
      : super(key: key);
  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: InkResponse(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => Description(
                    imagePath: imagePath,
                    placeName: name,
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 24),
          child: Text(
            name ?? 'Maldives',
            style: GoogleFonts.sourceSansPro(
                fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
