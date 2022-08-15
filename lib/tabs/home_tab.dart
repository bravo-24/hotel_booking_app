import 'package:flutter/material.dart';
import 'package:hotel_booking/widgets/destination_like.dart';
import 'package:hotel_booking/widgets/destination_nearby.dart';
import 'package:hotel_booking/widgets/explore_tag.dart';
import 'package:hotel_booking/widgets/header.dart';
import 'package:iconsax/iconsax.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.textalign_left,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Berlin, GER",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Segoe",
                fontSize: 20,
                fontWeight: FontWeight.w300),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.search_normal_1,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: const <Widget>[
            SizedBox(
              height: 25,
            ),
            ExploreWidget(),
            SizedBox(
              height: 20,
            ),
            HeaderWidget(
              title: "Destinations You May Like",
            ),
            SizedBox(
              height: 20,
            ),
            DestinationLike(
              imageLink:
                  "https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=449&q=80",
              city: 'Antalya',
              hotelName: 'Park Royal Hotel',
              reviewValue: '4,9',
              price: '€99',
              time: '/per night',
            ),
            SizedBox(
              height: 10,
            ),
            DestinationLike(
              imageLink:
                  "https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              city: 'Venice',
              hotelName: 'Grand Canyon Hotel',
              reviewValue: '4,8',
              price: '€299',
              time: '/per night',
            ),
            SizedBox(
              height: 10,
            ),
            DestinationLike(
              imageLink:
                  "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              city: 'Bodrum',
              hotelName: 'Paradise Line Hotel',
              reviewValue: '4,8',
              price: '€119',
              time: '/per night',
            ),
            SizedBox(
              height: 20,
            ),
            HeaderWidget(
              title: "Nearby Destinations",
            ),
            SizedBox(
              height: 20,
            ),
            DestinationNearby(
              city: "Zurich",
              hotelName: 'Zero Star Hotel',
              imageLink:
                  'https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
              price: '€159',
              reviewValue: '4,8',
              time: '/per night',
            )
          ],
        )),
      ),
    );
  }
}
