import 'package:flutter/material.dart';
import '/features/screens/init_screen.dart';
import '/features/themes/constants/colors.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  const LoginSuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
      ),
      body: Column(
        children: [
          const Text(
            "Ku itunda Wahageze!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Spacer(),
          Image.asset(
            "assets/logos/itundaSplashAndroid.png",
            height: MediaQuery.of(context).size.height * 0.2, //40%
          ),
          const Spacer(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: SColors.itundaAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 140,
                  vertical: 16,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, InitScreen.routeName);
              },
              child: const Text("Ahabanza"),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
