import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundBorderText extends StatelessWidget {
  final String title;

  final int position;
  final IconData cupertinoIcon;

  const RoundBorderText(
      {Key? key,
      required this.title,
      required this.position,
      required this.cupertinoIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 8.0 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: paddingValue),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Color.fromARGB(41, 158, 158, 158)),
        ),
        // add icon and title
        child: Row(
          children: [
            Icon(cupertinoIcon, size: 18),
            const SizedBox(width: 5),
            Text(title),
          ],
        ),
      ),
    );
  }
}
