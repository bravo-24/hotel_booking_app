import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontFamily: "Segoe",
                fontSize: 20),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              "see more",
              style: TextStyle(
                  color: Color(0xff53B7E2),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Segoe",
                  fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
