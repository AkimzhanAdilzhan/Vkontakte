import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_com/Widget/pages.dart';
import 'package:vk_com/Widget/messages.dart';

import 'news_pages.dart';
import 'notif_comment.dart';
import 'notifications.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  static List<Widget> _widgetOptions = <Widget>[
    NewsPagesWidget(),
    Scaffold(
      body: SearcPageWidget(),
    ),
    MsgWidget(),
    NotifCommentWidget(),
    PagesVk(),
  ];

  void OnselectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedTab],

      // body: PagesVk(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 28,
        // selectedFontSize: 0,
        // unselectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.loupe,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
            ),
            label: '',
          ),
        ],
        onTap: OnselectTab,
      ),
    );
  }
}
