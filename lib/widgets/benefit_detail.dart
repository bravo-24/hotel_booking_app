import 'package:flutter/material.dart';

class BenefitDetail extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;

  const BenefitDetail({
    Key? key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.icon1,
    required this.icon2,
    required this.icon3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD9D9D9), width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 40,
            child: Column(
              children: <Widget>[
                Icon(
                  icon1,
                  color: const Color(0xff53B7E2),
                  size: 20,
                ),
                const Spacer(),
                Text(
                  title1,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: Column(
              children: <Widget>[
                Icon(
                  icon2,
                  color: const Color(0xff53B7E2),
                  size: 20,
                ),
                const Spacer(),
                Text(
                  title2,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: Column(
              children: <Widget>[
                Icon(
                  icon3,
                  color: const Color(0xff53B7E2),
                  size: 20,
                ),
                const Spacer(),
                Text(
                  title3,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
