import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '/features/common/widgets/appbar/appbar.dart';
import '/data/models/chat_message.dart';
import 'components/chat_container.dart';

class VugaScreen extends StatefulWidget {
  const VugaScreen({super.key});

  @override
  _VugaScreenState createState() => _VugaScreenState();
}

class _VugaScreenState extends State<VugaScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Vuga'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.search_normal),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.notification),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicator: CustomTabIndicator(),
          tabs: [
            Tab(text: 'Njyewe'),
            Tab(text: 'Buzinesi'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PersonalChatTab(),
          BusinessChatTab(),
        ],
      ),
    );
  }
}

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter();
  }
}

class _CustomPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint();
    paint.color = Color.fromARGB(136, 158, 158, 158);
    paint.strokeWidth = 3.0;

    final double indicatorWidth =
        configuration.size!.width * 3.5; // 40% of tab width
    final Offset lineStart = Offset(
        offset.dx + (configuration.size!.width - indicatorWidth) / 2,
        configuration.size!.height);
    final Offset lineEnd =
        Offset(lineStart.dx + indicatorWidth, configuration.size!.height);

    canvas.drawLine(lineStart, lineEnd, paint);
  }
}

class BusinessChatTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        chatMessageList.length,
        (index) => ChatContainer(
          chatMessage: chatMessageList[index],
        ),
      ),
    );
  }
}

class PersonalChatTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        chatMessageList.length,
        (index) => ChatContainer(
          chatMessage: chatMessageList[index],
        ),
      ),
    );
  }
}
