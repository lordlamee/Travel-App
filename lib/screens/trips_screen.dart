import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/widgets.dart';
import 'package:travel_app/constants.dart';

class TripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 80, 16, 0),
      child: Column(
        children: <Widget>[
          RowHeading(
            heading: 'Trips',
          ),
          SearchField(),
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => TripCard(
                      imagePath: imagesPath[index],
                      placeName: placeNames[index],
                    ),
                separatorBuilder: (context, index) => Divider(
                      height: 20,
                    ),
                itemCount: placeNames.length),
          ),
        ],
      ),
    );
  }
}

class TripCard extends StatelessWidget {
  TripCard({this.imagePath, this.placeName});

  final String imagePath;
  final String placeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(imagePath ?? 'assets/maldives.png'),
                  fit: BoxFit.fill,
                  height: 110,
                  width: 85,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '${placeName ?? 'Maldives'} 5 days trip',
                            style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Transform.translate(
                            offset: Offset(0, -8),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: <Widget>[
                        calendarIcon,
                        Text(
                          '15th July- 20th July 2020',
                          style: GoogleFonts.sourceSansPro(
                            color: Color(0xFF2B3273),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        PictureContainer(
                          imagePath: 'assets/guy1pic.png',
                        ),
                        Transform.translate(
                          offset: Offset(-10, 0),
                          child: PictureContainer(
                            imagePath: 'assets/girlpic.png',
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(-20, 0),
                          child: PictureContainer(
                            imagePath: 'assets/guy2pic.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Expanded(
            child: Text(
              ' Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet',
              style: GoogleFonts.sourceSansPro(),
            ),
          )
        ],
      ),
    );
  }
}

class PictureContainer extends StatelessWidget {
  PictureContainer({this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      width: 26,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(imagePath)),
      ),
    );
  }
}
