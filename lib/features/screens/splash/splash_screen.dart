import 'package:flutter/material.dart';
import 'package:itunda/features/themes/constants/colors.dart';

import '../sign_in/sign_in_screen.dart';
import 'components/splash_content.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Ikaze ku itunda",
      "text": "Hamwe n'itunda, Oroshya ubuzima!",
      "image": "assets/logos/itundaSplashAndroid.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    title: splashData[index]['title'],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: SColors.itundaAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                            // horizontal 100% width
                            horizontal: 120,
                            vertical: 15,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        child: const Text("Tangira itunda"),
                      ),
                      const SizedBox(height: 10),
                      // already have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Niha ufite konti y'itunda?",
                            style: TextStyle(
                              fontSize: 14,
                              color: SColors.darkGrey,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SignInScreen.routeName);
                            },
                            child: const Text(
                              "Injira",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: SColors.itundaAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
