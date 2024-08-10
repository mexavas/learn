import 'package:flutter/material.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    this.title,
    this.text,
    this.image,
  }) : super(key: key);
  final String? title, text, image;

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        const Spacer(),
        Image.asset(
          widget.image!,
        ),
        Text(
          widget.title!,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          widget.text!,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
