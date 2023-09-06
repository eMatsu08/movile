import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget{
  final String day;
  final String lugarTuristico;
  final String linkTuristico;
  ItemActividad({
    required this.day,
    required this.lugarTuristico,
    required this.linkTuristico,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            // color: Colors.purple,
            child: Image.asset(linkTuristico),
          ),
          Text("Day $day", style: TextStyle(fontSize: 11)),
          Container(
            width: 120,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Text(
                  lugarTuristico,
                  style: TextStyle(fontSize: 11),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
