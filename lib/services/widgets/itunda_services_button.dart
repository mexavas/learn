import 'package:flutter/material.dart';

class ItundaServicesButton extends StatelessWidget {
  final String itundaServices;
  final IconData icon;
  final int selectedIndex;
  final int currIndex;

  const ItundaServicesButton(
      {super.key,
      required this.itundaServices,
      required this.icon,
      required this.selectedIndex,
      required this.currIndex});

  @override
  Widget build(BuildContext context) {
    if (currIndex == selectedIndex) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                itundaServices,
                style: const TextStyle(
                  color: Colors.white,
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
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                itundaServices,
                style: const TextStyle(
                  color: Colors.white,
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
