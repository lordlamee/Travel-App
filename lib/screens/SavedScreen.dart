import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/DescriptionScreen.dart';
import 'package:travel_app/widgets.dart';

List<String> imagesPath = [
  'assets/maldives.png',
  'assets/singapore.png',
  'assets/brazil.png',
  'assets/bali.png'
];
List<String> placeNames = ['Maldives', 'Singapore', 'Brazil', 'Bali'];

class SavedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 80, 16, 0),
      child: Column(
        children: <Widget>[
          RowHeading(
            heading: 'Saved',
          ),
          SearchField(),
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.zero,
                //    physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => TravelCard(
                      imagePath: imagesPath[index],
                      name: placeNames[index],
                    ),
                separatorBuilder: (context, index) => Divider(
                      height: 48,
                    ),
                itemCount: imagesPath.length),
          )
        ],
      ),
    );
  }
}

class TravelCard extends StatelessWidget {
  TravelCard({this.imagePath, this.name});

  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) => Description(
                      imagePath: imagePath,
                      placeName: name,
                    )));
      },
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
              height: 110,
              width: 85,
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(name),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat')
              ],
            ),
          )
        ],
      ),
    );
  }
}
