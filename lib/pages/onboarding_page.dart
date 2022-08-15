import 'package:flutter/material.dart';
import 'package:hotel_booking/home.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1569335468885-d7d1a41e570c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black.withOpacity(0.5),
          child: Container(
            margin: const EdgeInsets.only(
                left: 20, right: 20, top: 100, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Welcome to your",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Segoe",
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Dream Vacation",
                  style: TextStyle(
                      color: Color(0xffFE9870),
                      fontFamily: "Seaweed",
                      fontSize: 50,
                      fontWeight: FontWeight.w300),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                      color: const Color(0xffFF9677),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, elevation: 0.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Segoe",
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
