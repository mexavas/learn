import 'package:flutter/material.dart';
import '../sign_up/sign_up_screen.dart';
import '/features/themes/constants/colors.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: 14, color: SColors.darkGrey),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 14, color: SColors.itundaAccent),
          ),
        ),
      ],
    );
  }
}
