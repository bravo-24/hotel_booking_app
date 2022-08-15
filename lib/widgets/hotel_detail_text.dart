import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class HotelDetailText extends StatelessWidget {
  const HotelDetailText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 15.0,
          fontFamily: "Poppins",
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                //key: Key('showMore'),
                padding: EdgeInsets.all(5.0),
                child: ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt',
                  trimLines: 2,
                  //preDataText: "AMANDA",
                  preDataTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Color(0xff258BD6),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read More',
                  trimExpandedText: ' Show Less',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
