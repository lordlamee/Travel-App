import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

ImageIcon notificationIcon = ImageIcon(AssetImage('assets/notification.png'));
ImageIcon profileIcon = ImageIcon(
  AssetImage('assets/profileicon.png'),
);
ImageIcon homeIcon = ImageIcon(AssetImage('assets/homeIcon.png'));
ImageIcon mapIcon = ImageIcon(AssetImage('assets/mapIcon.png'));

class SearchField extends StatelessWidget {
  SearchField({this.hintText = 'Search'});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 17, 0, 37),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}

class RowHeading extends StatelessWidget {
  RowHeading({
    this.heading,
  });

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          heading,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        NotificationIcon(),
      ],
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: notificationIcon,
      ),
    );
  }
}
