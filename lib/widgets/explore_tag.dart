import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0.0),
      onPressed: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 160,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [Color(0xffF4674D), Color(0xff41436A)],
            begin: Alignment(-2.0, -1.0),
            end: Alignment(2.0, 1.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Row(children: <Widget>[
                      Container(
                        height: 160,
                        width: 155,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1558642084-fd07fae5282e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80"),
                                fit: BoxFit.fill),
                            color: Colors.black),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            height: 60,
                            width: 90,
                            child: const Text(
                              "Explore new \ndestinations \nin Spain",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Segoe",
                                  fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            height: 15,
                            width: 115,
                            child: Row(
                              children: const <Widget>[
                                Text(
                                  "Get more information",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Segoe",
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Iconsax.arrow_right_1,
                                  size: 10,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ]),
                    const Positioned(
                      right: 55,
                      top: 75,
                      child: SizedBox(
                        width: 15,
                        height: 15,
                        child: Icon(
                          Iconsax.routing,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 20,
              width: 20,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
