import 'package:flutter/material.dart';
import 'package:hotel_booking/widgets/benefit_detail.dart';
import 'package:hotel_booking/widgets/detail_foto.dart';
import 'package:hotel_booking/widgets/header.dart';
import 'package:hotel_booking/widgets/hotel_detail_text.dart';
import 'package:iconsax/iconsax.dart';

class HotelDetailPage extends StatefulWidget {
  const HotelDetailPage({Key? key}) : super(key: key);

  @override
  State<HotelDetailPage> createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Iconsax.arrow_left,
            color: Colors.black,
            size: 24,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.archive_1,
                color: Colors.black,
                size: 24,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const DetailFoto(
            reviewValue: '4,9',
            city: 'Antalya',
            hotelName: 'Park Royal Hotel',
            price: '€99',
            time: '/per night',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const HotelDetailText(),
          ),
          const HeaderWidget(
            title: "Benefit Details",
          ),
          const SizedBox(
            height: 20,
          ),
          const BenefitDetail(
            title1: 'Payback Garantie',
            title2: 'Free Wifi',
            title3: 'Happy Hours',
            icon1: Iconsax.empty_wallet,
            icon2: Iconsax.wifi,
            icon3: Iconsax.cake,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 70,
            width: 300,
            decoration: BoxDecoration(
                color: const Color(0xffFF9677),
                borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0.0),
              onPressed: () {},
              child: const Text(
                "Book now",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Segoe",
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ),
          )
        ],
      )),
    ));
  }
}
