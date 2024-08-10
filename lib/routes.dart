import 'package:flutter/widgets.dart';
import '/features/screens/products/products_screen.dart';

import '/features/screens/cart/cart_screen.dart';
import '/features/screens/complete_profile/complete_profile_screen.dart';
import '/features/screens/details/details_screen.dart';
import '/features/screens/forgot_password/forgot_password_screen.dart';
//import '/features/screens/home/home_screen.dart';
import '/features/screens/init_screen.dart';
import '/features/screens/login_success/login_success_screen.dart';
import '/features/screens/otp/otp_screen.dart';
import '/features/screens/profile/profile_screen.dart';
import '/features/screens/sign_in/sign_in_screen.dart';
import '/features/screens/sign_up/sign_up_screen.dart';
import '/features/screens/splash/splash_screen.dart';
import 'services/isoko/home.dart';
import 'services/isoko/pages/home_page.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  //SplashScreen.routeName: (context) => const SplashScreen(),
  //SignInScreen.routeName: (context) => const SignInScreen(),
  //ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  // SignUpScreen.routeName: (context) => const SignUpScreen(),
  //CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => const OtpScreen(),
  MyHomePage.routeName: (context) => MyHomePage(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
