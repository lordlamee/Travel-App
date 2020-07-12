import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/widgets.dart';

class Description extends StatelessWidget {
  Description({this.imagePath, this.placeName});

  final String imagePath;
  final String placeName;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Hero(
        tag: placeName,
        child: Container(
          padding: EdgeInsets.only(top: 80),
          constraints: BoxConstraints.tight(screenSize),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath ?? 'assets/maldives.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    NotificationIcon()
                  ],
                ),
              ),
              Spacer(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(0, -20),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Material(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            child: Container(
                              height: 40,
                              width: 40,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
                        child: Material(
                          child: Text(
                            placeName ?? 'Maldives',
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Material(
                            child: Text(
                              ' Cras gravida bibendum dolor eu varius. Morbi fermentum velit nisl, eget vehicula lorem sodales eget. Donec quis volutpat orci. Sed ipsum felis, tristique id egestas et, convallis ac velit. In consequat dolor libero, nec luctus orci rutrum nec. Phasellus vel arcu sed nibh ornare accumsan. Vestibulum in elementum erat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean laoreet rhoncus ipsum eget tempus. Praesent convallis fermentum sagittis.',
                              style: GoogleFonts.sourceSansPro(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
