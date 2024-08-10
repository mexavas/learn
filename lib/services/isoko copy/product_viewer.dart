import 'package:flutter/material.dart';

class ProductViewer extends StatefulWidget {
  const ProductViewer({Key? key}) : super(key: key);

  @override
  ProductViewerState createState() => ProductViewerState();
}

class ProductViewerState extends State<ProductViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/banners/banner_2.jpg'),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Emma Watson",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40)),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Text("60 Videos",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16)),
                                SizedBox(
                                  width: 50,
                                ),
                                Text("240K Subscribers",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.",
                            style: TextStyle(color: Colors.grey, height: 1.4)),
                        SizedBox(
                          height: 40,
                        ),
                        Text("Born",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("April, 15th 1990, Paris, France",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Nationality",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("British", style: TextStyle(color: Colors.grey)),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Videos",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[],
                          ),
                        ),
                        SizedBox(
                          height: 120,
                        )
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[700]),
                child: Align(
                    child:
                        Text("Follow", style: TextStyle(color: Colors.white))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
