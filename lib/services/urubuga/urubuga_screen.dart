import '/data/models/neighborhood_life.dart';
import 'components/life_body.dart';
import 'components/life_header.dart';
import 'package:flutter/material.dart';
import '/features/themes/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import '/features/common/widgets/appbar/appbar.dart';

class UrubugaScreen extends StatelessWidget {
  const UrubugaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: const Row(
          children: [
            Text(
              'Nkona',
            ),
            SizedBox(width: 4.0),
            Icon(
              Iconsax.arrow_down_1,
              color: SColors.darkGrey,
            ),
          ],
        ),
        // add notification icon
        action: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.notification),
          ),
        ],
      ),
      body: ListView(
        // 목록을 보여주는 리스트 뷰를 설정합니다.
        children: [
          const LifeHeader(), // 생활 헤더 위젯을 추가합니다. (상수로 선언된 위젯)
          ...List.generate(
            // neighborhoodLifeList의 요소들을 반복하면서 LifeBody 위젯을 생성합니다.
            neighborhoodLifeList
                .length, // 반복할 횟수는 neighborhoodLifeList의 길이로 지정합니다.
            (index) => Padding(
              // 각 요소에 대한 패딩을 추가합니다.
              padding:
                  const EdgeInsets.only(bottom: 8.0), // 아래쪽으로 8.0만큼의 패딩을 추가합니다.
              child: LifeBody(
                // 생활 목록을 보여주는 위젯을 생성합니다.
                neighborhoodLife:
                    neighborhoodLifeList[index], // 인덱스에 해당하는 생활 목록을 전달합니다.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
