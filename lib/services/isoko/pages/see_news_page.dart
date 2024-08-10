import 'package:flutter/material.dart';

class SeeNewsPage extends StatelessWidget {
  final String newsTitle;
  final String newsContent;
  final String newsImageURL;
  final String newsDate;

  const SeeNewsPage({
    super.key,
    required this.newsTitle,
    required this.newsDate,
    required this.newsContent,
    required this.newsImageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QUICK NEWS by RB",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // news heading
              ListTile(
                title: Text(
                  newsTitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: "Poppins-Bold"),
                ),
                subtitle: Text(
                  newsDate,
                  style: const TextStyle(
                    fontFamily: "Poppins-Regular",
                    fontSize: 10,
                  ),
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              // news description
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 4),
                child: Text(
                  newsContent,
                  style: const TextStyle(
                    fontFamily: "Poppins-Regular",
                  ),
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              // news image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  newsImageURL,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
