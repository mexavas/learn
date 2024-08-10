import 'package:flutter/material.dart';
import 'package:itunda/features/themes/constants/colors.dart';
import 'package:itunda/features/themes/helpers/helper_function.dart';

class NewsCategoryButton extends StatelessWidget {
  final String newsCategory;
  final IconData icon;
  final int selectedIndex;
  final int currIndex;

  const NewsCategoryButton(
      {super.key,
      required this.newsCategory,
      required this.icon,
      required this.selectedIndex,
      required this.currIndex});

  @override
  Widget build(BuildContext context) {
    if (currIndex == selectedIndex) {
      return Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(110, 108, 117, 112),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Color.fromARGB(110, 108, 117, 112),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          child: Row(
            children: [
              Icon(
                icon,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                newsCategory,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontFamily: "Poppins-Bold",
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(29, 158, 158, 158),
          border: Border.all(
            color: Color.fromARGB(29, 158, 158, 158),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          child: Row(
            children: [
              Icon(
                icon,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                newsCategory,
                style: const TextStyle(
                  fontFamily: "Poppins-SemiBold",
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
