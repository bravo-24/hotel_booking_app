import 'package:flutter/material.dart';
import 'package:hotel_booking/pages/hotel_detail_page.dart';
import 'package:iconsax/iconsax.dart';

class DestinationLike extends StatelessWidget {
  final String imageLink;
  final String hotelName;
  final String city;
  final String reviewValue;
  final String price;
  final String time;

  const DestinationLike({
    Key? key,
    required this.imageLink,
    required this.hotelName,
    required this.city,
    required this.reviewValue,
    required this.price,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
           Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HotelDetailPage()),
                      );
      },
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffD9D9D9), width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: <Widget>[
            Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(imageLink), fit: BoxFit.fill)),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    hotelName,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Segoe",
                        fontSize: 10),
                  ),
                  Text(
                    city,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Segoe",
                        fontSize: 10),
                  ),
                  SizedBox(
                    height: 12,
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Iconsax.star,
                          size: 10,
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
                              fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: <Widget>[
                      Text(
                        price,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Segoe",
                            fontSize: 10),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Segoe",
                            fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.archive_1,
                  color: Colors.black,
                  size: 20,
                ))
          ],
        ),
      ),
    );
  }
}
