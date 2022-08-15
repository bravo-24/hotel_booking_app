import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DetailFoto extends StatelessWidget {
  final String reviewValue;
  final String hotelName;
  final String city;
  final String price;
  final String time;

  const DetailFoto({
    Key? key,
    required this.reviewValue,
    required this.hotelName,
    required this.city,
    required this.price,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=449&q=80"))),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Column(children: <Widget>[
          Container(
            height: 35,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20,
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Iconsax.star,
                        size: 20,
                        color: Color(0xffFFBB00),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        reviewValue,
                        style: const TextStyle(
                            color: Color(0xffFFBB00),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      hotelName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe",
                          fontSize: 25),
                    ),
                    Text(
                      city,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Segoe",
                          fontSize: 20),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: <Widget>[
                    Text(
                      price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe",
                          fontSize: 25),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        time,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Segoe",
                            fontSize: 10),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
