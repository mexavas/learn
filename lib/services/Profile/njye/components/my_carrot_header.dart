import 'package:flutter/material.dart'; // 플러터 머티리얼 디자인 라이브러리// Font Awesome 아이콘 라이브러
import 'package:iconsax/iconsax.dart'; // Iconsax 아이콘 라이브러리

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key}); // 생성자

  @override
  Widget build(BuildContext context) {
    // Card 위젯을 사용하여 헤더 부분의 UI를 구성
    return Card(
      elevation: 0.5, // 카드의 그림자 깊이
      margin: EdgeInsets.zero, // 카드의 외부 여백 제거
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0)), // 카드 모서리 둥글기 제거
      child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20, horizontal: 16), // 상하 20, 좌우 16 패딩
          child: Column(
            children: [
              _buildProfileRow(), // 프로필 행을 구성하는 위젯
              const SizedBox(height: 30.0), // 위젯 간의 수직 공간
              _buildProfileButton(), // 프로필 보기 버튼
              const SizedBox(height: 30.0), // 위젯 간의 수직 공간
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // 자식 위젯을 균등하게 배치
                children: [
                  _buildRoundTextButton(
                      'ibyo naguze', Iconsax.receipt), // 라운드 텍스트 버튼
                  _buildRoundTextButton(
                      'ibyo nagurishije', Iconsax.shopping_cart), // 라운드 텍스트 버튼
                  _buildRoundTextButton('ibyo nakunze ', Iconsax.heart),
                ],
              ),
            ],
          )),
    );
  }

  // 라운드 텍스트 버튼을 구성하는 위젯
  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 226, 208, 1), // 배경색
            border:
                Border.all(color: Color(0xFFD4D5DD), width: 0.5), // 테두리 색상과 두께
            borderRadius: BorderRadius.circular(30.0), // 모서리 둥글기
          ),
          child: Icon(
            iconData,
            color: Colors.orange, // 아이콘 색상
          ),
        ),
        SizedBox(height: 10.0), // 아이콘과 텍스트 사이의 공간
        Text(title,
            style: // 텍스트 스타일
                TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }

  // 프로필 보기 버튼 위젯
  Widget _buildProfileButton() {
    return InkWell(
        onTap: () {}, // 클릭 이벤트 처리(현재 미정의)
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFD4D5DD),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(6.0), // 모서리 둥글기
          ),
          height: 45, // 컨테이너 높이
          child: Center(
            child: Text(
              'Njyewe',
              style: // 텍스트 스타일
                  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }

  // 프로필 정보 행을 구성하는 위젯
  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5), // 이미지 모서리 둥글기
                child: Image.network(
                  'https://picsum.photos/200/100/',
                  fit: BoxFit.cover, // 이미지 채우기 방식
                ),
              ),
            ),
            Positioned(
              bottom: 0, right: 0, // 포지션 조정
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)), // 배경색
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 15, // 아이콘 크기
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 16 // 이미지와 텍스트 사이의 가로 공간
            ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
          children: [
            Text('Eric',
                style: // 개발자 텍스트 스타일
                    TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10), // 텍스트 간의 수직 공간
            Text('nkona'), // 세부 정보 텍스트
          ],
        ),
      ],
    );
  }
}
