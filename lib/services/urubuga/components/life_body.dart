import '/data/models/neighborhood_life.dart';
import 'package:flutter/material.dart';
import '/features/components/image_container.dart';
import 'package:iconsax/iconsax.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;
  const LifeBody({Key? key, required this.neighborhoodLife}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(
            height: 1,
            thickness: 1,
            // color: Colors.grey[300],
          ),
          _buildTail(neighborhoodLife.commentCount)
        ],
      ),
    );
  }

  Padding _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(4)),
              //color: Color.fromRGBO(247, 247, 247, 1),
            ),
            child: Text(
              neighborhoodLife.category,
              style: TextStyle(fontSize: 12),
            ),
          ),
          Text(neighborhoodLife.date, style: TextStyle(fontSize: 12))
        ],
      ),
    );
  }

  Padding _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          ImageContainer(
            width: 30,
            height: 30,
            borderRadius: 15,
            imageURl: neighborhoodLife.profileImgUri,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: ' ${neighborhoodLife.userName}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            TextSpan(
              text: ' ${neighborhoodLife.location}',
            ),
          ])),
        ],
      ),
    );
  }

  Padding _buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: TextStyle(fontSize: 16),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  _buildImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != '',
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildTail(int commentCount) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              Iconsax.heart,
              //color: Colors.grey,
              size: 22,
            ),
            SizedBox(width: 8),
            Text(
              'Nibyo ${neighborhoodLife.authCount}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 22),
            Icon(
              Iconsax.message,
              //color: Colors.grey,
              size: 22,
            ),
            SizedBox(width: 8),
            Text(
              "${"Komenti"} $commentCount",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ));
  }
}
